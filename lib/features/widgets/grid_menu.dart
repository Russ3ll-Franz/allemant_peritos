import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/widgets/grid.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GridDashboard extends StatelessWidget {
  const GridDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.builder(
            itemCount: grids.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
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
        onTap: () =>
            context.pushRoute(InspeccionRoute(tipoInspeccionId: items.id)),
        splashColor: Colors.yellow,
        focusColor: Colors.amber,
        highlightColor: Colors.greenAccent,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              color: items.color, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                items.image,
                scale: 1.4,
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                items.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                /*  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)) */
              ),
            ],
          ),
        ),
      ),
    );
  }
}
