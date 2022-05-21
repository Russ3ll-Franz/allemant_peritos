import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/coordinacion/coordinacion_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_cubit.dart';
import 'package:allemant_peritos/features/widgets/loading_indicators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 210,
                width: double.infinity,
                padding: const EdgeInsets.all(6),
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      context.pushRoute(DetailInspeccionRoute(
                          receivedCoordinacion: inspeccionList[index]));
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromRGBO(254, 236, 232, 1)),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    inspeccionList[index].tipoInspeccionNombre!,
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Icon(FontAwesomeIcons.addressCard,
                                        color: Colors.blue[900], size: 20),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                        inspeccionList[index]
                                            .coordinacionCorrelativo!,
                                        style: const TextStyle(
                                            letterSpacing: 3,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Icon(FontAwesomeIcons.userTie,
                                        size: 20, color: Colors.blue[900]),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Flexible(
                                      child: Text(
                                          inspeccionList[index]
                                              .solicitanteNombre!,
                                          overflow: TextOverflow.fade,
                                          maxLines: 1,
                                          softWrap: false,
                                          style: const TextStyle(
                                              letterSpacing: 0,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text("CONTACTO:",
                                    style: TextStyle(
                                        letterSpacing: 0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600)),
                                Row(
                                  children: [
                                    const Icon(FontAwesomeIcons.phone,
                                        size: 19,
                                        color:
                                            Color.fromARGB(255, 218, 10, 45)),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Text(inspeccionList[index].contactoNombre!,
                                        overflow: TextOverflow.fade,
                                        softWrap: false,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            letterSpacing: 0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text("FECHA Y HORA:",
                                    style: TextStyle(
                                        letterSpacing: 0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600)),
                                Row(
                                  children: [
                                    const Icon(FontAwesomeIcons.calendar,
                                        size: 19, color: Colors.lightBlue),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(inspeccionList[index].inspeccionFecha!,
                                        overflow: TextOverflow.fade,
                                        softWrap: false,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            letterSpacing: 0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300)),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(FontAwesomeIcons.clock,
                                        size: 19,
                                        color: Color.fromRGBO(3, 169, 244, 1)),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(inspeccionList[index].inspeccionHora!,
                                        overflow: TextOverflow.fade,
                                        softWrap: false,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            letterSpacing: 0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
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
                  bottom: 75,
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
      'assets/images/menu/alarma_green.png',
      fit: BoxFit.cover,
      height: 60,
    );
  } else if (riesgoID == "2") {
    return Image.asset(
      'assets/images/menu/alarma_yellow.png',
      fit: BoxFit.cover,
      height: 60,
    );
  } else if (riesgoID == "3") {
    return Image.asset(
      'assets/images/menu/alarma_red.png',
      fit: BoxFit.cover,
      height: 60,
    );
  }
  return Container();
}
