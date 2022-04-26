import 'dart:ffi';

import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/dropdown/dropdown_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/routes/routes.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/widgets/inspeccion_tipo_screen.dart';
import 'package:allemant_peritos/features/widgets/loading_indicators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class InspeccionBody extends StatefulWidget {
  const InspeccionBody(
      {Key? key,
      required this.mySize,
      required this.myCategoryHeight,
      required this.idTipoTasacion})
      : super(key: key);
  final Size mySize;
  final double myCategoryHeight;
  final String idTipoTasacion;
  @override
  State<InspeccionBody> createState() => _InspeccionBodyState();
}

class _InspeccionBodyState extends State<InspeccionBody> {
  final InspeccionTipoScroller categoriesScroller =
      const InspeccionTipoScroller();
  ScrollController controller = ScrollController();
  double topContainer = 0;
  bool closeTopContainer = false;
  @override
  void initState() {
    super.initState();
    context
        .read<InspeccionCubit>()
        .getTypeInspeccionByUser(widget.idTipoTasacion);
    context.read<DropdownCubit>().ocupadoInmueble("");

    controller.addListener(() {
      double value = controller.offset / 119;
      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InspeccionCubit, InspeccionState>(
      builder: (_, state) {
        if (state is InspeccionLoading) {
          return LoadingIndicators.instance.smallLoadingAnimation(context);
        } else if (state is InspeccionLoaded) {
          return Container(
            color: Colors.white,
            child: Column(children: <Widget>[
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: closeTopContainer ? 0 : 1,
                child: AnimatedContainer(
                    //color: Colors.amber,
                    duration: const Duration(milliseconds: 200),
                    width: widget.mySize.width,
                    alignment: Alignment.topCenter,
                    height: closeTopContainer ? 0 : widget.myCategoryHeight,
                    child: categoriesScroller),
              ),
              InspeccionLista(
                  inspeccionList: (state as dynamic).tipoInspeccions,
                  topContainer: topContainer,
                  myscroller: controller)
            ]),
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
                    .read<InspeccionCubit>()
                    .getTypeInspeccionByUser(widget.idTipoTasacion);
              },
              child: const Text('Reintentar'),
            )
          ],
        );
      },
    );
  }
}

class InspeccionLista extends StatelessWidget {
  final List<Inspeccion> inspeccionList;
  final ScrollController myscroller;
  final double topContainer;
  const InspeccionLista(
      {Key? key,
      required this.inspeccionList,
      required this.topContainer,
      required this.myscroller})
      : super(key: key);

  Color? getColor(String riesgoID) {
    if (riesgoID == "1") {
      return AppColors.lightTeal;
    } else if (riesgoID == "2") {
      return AppColors.lightYellow;
    } else {
      return AppColors.lightRed;
    }
  }

  Color getColorFont(String riesgoID) {
    if (riesgoID == "1") {
      return Colors.black;
    } else if (riesgoID == "2") {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: myscroller,
        itemCount: inspeccionList.length,
/*         shrinkWrap: true,
 */
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          double scale = 1.0;
          if (topContainer > 0.5) {
            scale = index + 0.5 - topContainer;
            if (scale < 0) {
              scale = 0;
            } else if (scale > 1) {
              scale = 1;
            }
          }
          return Opacity(
            opacity: scale,
            child: Transform(
              transform: Matrix4.identity()..scale(scale, scale),
              alignment: Alignment.bottomCenter,
              child: Align(
                heightFactor: 0.7,
                alignment: Alignment.topCenter,
                child: InkWell(
                  child: Container(
                    height: 150,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        color:
                            getColor(inspeccionList[index].riesgoId.toString()),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withAlpha(80),
                              blurRadius: 10.0),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "COORDINACIÓN: " +
                                      inspeccionList[index]
                                          .coordinacionCorrelativo
                                          .toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: getColorFont(inspeccionList[index]
                                          .riesgoId
                                          .toString()),
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.fade,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  inspeccionList[index]
                                      .solicitanteNombre
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: getColorFont(inspeccionList[index]
                                          .riesgoId
                                          .toString())),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Iconsax.calendar,
                                        color: getColorFont(
                                            inspeccionList[index]
                                                .riesgoId
                                                .toString())),
                                    const SizedBox(width: 8),
                                    Text(
                                      inspeccionList[index]
                                          .inspeccionFecha
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: getColorFont(
                                              inspeccionList[index]
                                                  .riesgoId
                                                  .toString())),
                                      /* overflow: TextOverflow.fade,
                                        maxLines: 2,
                                         softWrap: false, */
                                    ),
                                    const SizedBox(width: 16),
                                    Icon(
                                      Iconsax.clock,
                                      color: getColorFont(inspeccionList[index]
                                          .riesgoId
                                          .toString()),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      inspeccionList[index]
                                          .inspeccionHora
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: getColorFont(
                                              inspeccionList[index]
                                                  .riesgoId
                                                  .toString())),
                                      /*color: Colors.grey para las letras
                                      overflow: TextOverflow.fade,
                                        maxLines: 2,
                                         softWrap: false, */
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    context.pushRoute(InspeccionDetailRoute(
                        coordinacionID:
                            inspeccionList[index].coordinacionId.toString()));
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget _widgetShimmer(BuildContext context) {
  return Container();
}

class Loading extends StatelessWidget {
  final String loadingMessage;

  const Loading({required Key key, required this.loadingMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loadingMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
//              color: Colors.lightGreen,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 24),
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.lightGreen),
          ),
        ],
      ),
    );
  }
}

class Error extends StatelessWidget {
  final String errorMessage;

  final Function onRetryPressed;

  const Error(
      {required Key key,
      required this.errorMessage,
      required this.onRetryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          RaisedButton(
            color: Colors.redAccent,
            child: const Text(
              'Retry',
              style: TextStyle(
//                color: Colors.white,
                  ),
            ),
            onPressed: onRetryPressed(),
          )
        ],
      ),
    );
  }
}
