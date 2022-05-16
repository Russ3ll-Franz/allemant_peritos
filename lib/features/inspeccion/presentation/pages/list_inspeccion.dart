import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/coordinacion/coordinacion_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_cubit.dart';
import 'package:allemant_peritos/features/widgets/loading_indicators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListInspeccion extends StatefulWidget {
  const ListInspeccion({Key? key, required this.idTipoTasacion})
      : super(key: key);
  final String idTipoTasacion;

  @override
  State<ListInspeccion> createState() => _ListInspeccionState();
}

class _ListInspeccionState extends State<ListInspeccion> {
  @override
  void initState() {
    super.initState();
    context.read<CoordinacionCubit>().postInspeccionByAll(
        inspeccionTipo: widget.idTipoTasacion, coordinacionCodigo: '');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoordinacionCubit, CoordinacionState>(
      builder: (_, state) {
        if (state is CoordinacionLoading) {
          return LoadingIndicators.instance.smallLoadingAnimation(context);
        } else if (state is CoordinacionLoaded) {
          return MyListaInspeccion(
            inspeccionList: (state as dynamic).inspeccion,
          );
        }
        //error state
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (state as InspeccionErrorState).message,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context
                    .read<CoordinacionCubit>()
                    .postInspeccionByAll(inspeccionTipo: widget.idTipoTasacion);
              },
              child: const Text('Reintentar'),
            )
          ],
        );
      },
    );
  }
}

class MyListaInspeccion extends StatelessWidget {
  final List<Coordinacion> inspeccionList;
  final _scrollController = ScrollController();

  MyListaInspeccion({
    Key? key,
    required this.inspeccionList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          /* return SizedBox(
            height: 215,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                height: 190,
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(inspeccionList[index].tipoInspeccionNombre!,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(inspeccionList[index].coordinacionCorrelativo!,
                            style: TextStyle(
                                letterSpacing: 4,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.w300)),
                        const SizedBox(
                          height: 2,
                        ),
                        Flexible(
                          child: Text(inspeccionList[index].solicitanteNombre!,
                              overflow: TextOverflow.fade,
                              softWrap: false,
                              style: TextStyle(
                                  letterSpacing: 0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300)),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        ElevatedButton(
                          //on pressed
                          onPressed: () async {},
                          //text to shoe in to the button
                          child: const Text('Registrar!',
                              style: TextStyle(color: Colors.white)),
                          //style section code here
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Color.fromARGB(255, 255, 235, 206),
                ),
              ),
              Positioned(
                  right: 0,
                  top: 0,
                  child: alarmImage(inspeccionList[index].riesgoId!))
            ]),
          ); */
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 165,
                width: double.infinity,
                padding: EdgeInsets.all(6),
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      print("object");
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
/*                                   borderRadius: BorderRadius.circular(15),
 */
                                  color: Colors.cyan[50]),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /* Container(
                                          height: MediaQuery.of(context).size.height,
                                          color: Colors.pinkAccent,
                                        ), */
                                Text(
                                    inspeccionList[index].tipoInspeccionNombre!,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                    inspeccionList[index]
                                        .coordinacionCorrelativo!,
                                    style: TextStyle(
                                        letterSpacing: 4,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300)),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(inspeccionList[index].solicitanteNombre!,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                    style: TextStyle(
                                        letterSpacing: 0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300)),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text("CONTACTO:",
                                    style: TextStyle(
                                        letterSpacing: 0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600)),
                                Text(inspeccionList[index].contactoNombre!,
                                    overflow: TextOverflow.fade,
                                    softWrap: false,
                                    maxLines: 1,
                                    style: TextStyle(
                                        letterSpacing: 0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 30,
                  bottom: 55,
                  child: alarmImage(inspeccionList[index].riesgoId!)),
            ],
          );
        },
        itemCount: inspeccionList.length,
        controller: _scrollController,
      ),
    );
  }
}

Widget alarmImage(String riesgoID) {
  if (riesgoID == "1") {
    return Image.asset(
      'assets/images/menu/alarma_red.png',
      fit: BoxFit.cover,
      height: 60,
    );
  } else if (riesgoID == "2") {
    return Image.asset(
      'assets/images/menu/alarma_yellow.png',
      fit: BoxFit.cover,
      height: 60,
    );
  } else {
    return Image.asset(
      'assets/images/menu/alarma_green.png',
      fit: BoxFit.cover,
      height: 60,
    );
  }
}
