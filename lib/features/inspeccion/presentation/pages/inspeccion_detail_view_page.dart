import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/configs/sizebox.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/coordinacion/coordinacion_cubit.dart';
import 'package:allemant_peritos/features/widgets/loading_indicators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InspeccionDetailView extends StatefulWidget {
  final String displayInspeccion;

  const InspeccionDetailView({Key? key, required this.displayInspeccion})
      : super(key: key);

  @override
  State<InspeccionDetailView> createState() => _InspeccionDetailViewState();
}

class _InspeccionDetailViewState extends State<InspeccionDetailView> {
  @override
  void initState() {
    super.initState();
    context
        .read<CoordinacionCubit>()
        .getInspeccionByCoordinacion(widget.displayInspeccion);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoordinacionCubit, CoordinacionState>(
        builder: (context, state) {
      if (state is CoordinacionLoading) {
        return LoadingIndicators.instance.smallLoadingAnimation(context);
      } else if (state is CoordinacionLoaded) {
        return InspeccionDetailViewBody(displayInspeccion: state.inspeccion);
      }
      //error state
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            (state as CoordinacionError).message,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    });
  }
}

class InspeccionDetailViewBody extends StatelessWidget {
  final Coordinacion? displayInspeccion;

  const InspeccionDetailViewBody({Key? key, required this.displayInspeccion})
      : super(key: key);

  Widget changeColorRiesgo(tipo) {
    switch (tipo) {
      case 'BAJO':
        return Container(
          height: 30,
          width: 60,
          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.green,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(80), blurRadius: 10.0),
              ]),
          child: Center(
            child: Text(displayInspeccion!.recordsFind[0].riesgoNombre,
                textAlign: TextAlign.center,
                style: TextStyle(
                    //backgroundColor: Colors.green,
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        );
      case 'MEDIO':
        return Container(
          height: 30,
          width: 60,
          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(80), blurRadius: 10.0),
              ]),
          child: Center(
            child: Text(displayInspeccion!.recordsFind[0].riesgoNombre,
                textAlign: TextAlign.center,
                style: TextStyle(
                    //backgroundColor: Colors.green,
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        );
      case 'ALTO':
        return Container(
          height: 30,
          width: 60,
          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.red,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(80), blurRadius: 10.0),
              ]),
          child: Center(
            child: Text(displayInspeccion!.recordsFind[0].riesgoNombre,
                textAlign: TextAlign.center,
                style: TextStyle(
                    //backgroundColor: Colors.green,
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        );

      default:
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      InkWell(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(80), blurRadius: 10.0),
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(FontAwesomeIcons.user, size: 14),
                            SizeBox.sizeSpaceWidthIcon,
                            Text("COORDINADOR",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(233, 115, 44, 1),
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        SizeBox.sizeRow,
                        Text(
                          displayInspeccion!.recordsFind[0].coordinadorNombre
                              .toUpperCase(),
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(FontAwesomeIcons.newspaper, size: 14),
                            SizeBox.sizeSpaceWidthIcon,
                            Text("COORDINACIÓN",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(233, 115, 44, 1),
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        SizeBox.sizeRow,
                        Text(
                          displayInspeccion!
                              .recordsFind[0].coordinacionCorrelativo
                              .toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                SizeBox.sizeRow,
                //RIESGO
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(FontAwesomeIcons.newspaper, size: 14),
                            SizeBox.sizeSpaceWidthIcon,
                            Text("RIESGO",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(233, 115, 44, 1),
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        SizeBox.sizeRow,
                        changeColorRiesgo(
                            displayInspeccion!.recordsFind[0].riesgoNombre),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(FontAwesomeIcons.userSecret, size: 14),
                            SizeBox.sizeSpaceWidthIcon,
                            Text("PERITO :",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(233, 115, 44, 1),
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        SizeBox.sizeRow,
                        Text(
                          displayInspeccion!.recordsFind[0].peritoNombre
                              .toUpperCase(),
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),

                SizeBox.sizeRow,
                //FECHA DE SOLICITUD
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(FontAwesomeIcons.calendar, size: 14),
                            SizeBox.sizeSpaceWidthIcon,
                            Text("FECHA DE SOLICITUD",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(233, 115, 44, 1),
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        SizeBox.sizeRow,
                        Text(
                          displayInspeccion!.recordsFind[0].fechaSolicitud
                              .toUpperCase(),
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(FontAwesomeIcons.calendar, size: 14),
                            SizeBox.sizeSpaceWidthIcon,
                            Text("FECHA DE ENTREGA",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(233, 115, 44, 1),
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        SizeBox.sizeRow,
                        Text(
                          displayInspeccion!.recordsFind[0].fechaEntrega
                              .toUpperCase(),
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),

                SizeBox.sizeRow,
                //SOLICITANTE
                Row(
                  children: const [
                    Icon(FontAwesomeIcons.blackTie, size: 14),
                    SizeBox.sizeSpaceWidthIcon,
                    Text("SOLICITANTE",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(233, 115, 44, 1),
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                SizeBox.sizeRow,
                Text(
                  displayInspeccion!.recordsFind[0].solicitanteNombre
                      .toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
                ),
                SizeBox.sizeRow,
                //CLIENTE
                Row(
                  children: const [
                    Icon(FontAwesomeIcons.user, size: 14),
                    SizeBox.sizeSpaceWidthIcon,
                    Text("CLIENTE",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(233, 115, 44, 1),
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                SizeBox.sizeRow,
                Text(
                  displayInspeccion!.recordsFind[0].clienteNombre.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
                ),
                SizeBox.sizeRow,

                //TIPO DE INSPECCIÓN
                Row(
                  children: const [
                    Icon(FontAwesomeIcons.houseCircleExclamation, size: 14),
                    SizeBox.sizeSpaceWidthIcon,
                    Text("TIPO DE INSPECCIÓN",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(233, 115, 44, 1),
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                SizeBox.sizeRow,
                Text(
                  displayInspeccion!.recordsFind[0].tipoInspeccionNombre
                      .toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
                ),
                SizeBox.sizeRow,
                //CONTACTO
                Row(
                  children: [
                    const Icon(FontAwesomeIcons.male, size: 14),
                    SizeBox.sizeSpaceWidthIcon,
                    const Text("CONTACTO :  ",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(233, 115, 44, 1),
                            fontWeight: FontWeight.w900)),
                    SizeBox.sizeSpaceWidthIcon,
                    Text(
                      displayInspeccion!.recordsFind[0].contactoNombre
                          .toUpperCase(),
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF545D68),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                SizeBox.sizeRow,
                //DIRECCIÓN
                Row(
                  children: const [
                    Icon(FontAwesomeIcons.road, size: 14),
                    SizeBox.sizeSpaceWidthIcon,
                    Text("DIRECCIÓN",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(233, 115, 44, 1),
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                SizeBox.sizeRow,
                Text(
                  displayInspeccion!.recordsFind[0].inspeccionDireccion
                      .toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
                ),
                SizeBox.sizeRow,
                //FECHA DE ENTREGA
                Row(
                  children: const [
                    Icon(FontAwesomeIcons.windowMaximize, size: 14),
                    SizeBox.sizeSpaceWidthIcon,
                    Text("SERVICIOS",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(233, 115, 44, 1),
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                SizeBox.sizeRow,
                Text(
                  displayInspeccion!.recordsFind[0].servicioTipoNombre
                      .toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
                ),
                SizeBox.sizeRow,

                Row(
                  children: const [
                    Icon(FontAwesomeIcons.windowMaximize, size: 14),
                    SizeBox.sizeSpaceWidthIcon,
                    Text("OBSERVACIONES",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(233, 115, 44, 1),
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                SizeBox.sizeRow,
                Text(
                  displayInspeccion!.recordsFind[0].inspeccionObservacion
                      .toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton.icon(
                        onPressed: () {
                          AutoRouter.of(context).push(InspeccionRegisterRoute(
                              inspeccionID: displayInspeccion!
                                  .recordsFind[0].inspeccionId));
                        },
                        icon: const Icon(
                          FontAwesomeIcons.home,
                          size: 16,
                        ),
                        label: const Text("REGISTRAR"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(140, 40),
                          primary: AppColors.lightGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          textStyle: const TextStyle(fontSize: 16),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                        )),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.map,
                          size: 16,
                        ),
                        label: const Text("UBICACIÓN"),
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.lightRed,
                          minimumSize: const Size(140, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          textStyle: const TextStyle(fontSize: 16),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
