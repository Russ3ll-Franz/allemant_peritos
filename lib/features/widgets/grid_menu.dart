import 'package:allemant_peritos/features/widgets/grid.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  const GridDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.builder(
            itemCount: grids.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => Cards(
                  items: grids[index],
                )));
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key, required this.items}) : super(key: key);

  final MyListGrid items;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: null,
        /* () =>
            context.pushRoute(InspeccionRoute(tipoInspeccionId: items.id)), */
        splashColor: Colors.yellow,
        focusColor: Colors.amber,
        highlightColor: Colors.greenAccent,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                items.image,
                scale: 1.8,
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                items.title,
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
