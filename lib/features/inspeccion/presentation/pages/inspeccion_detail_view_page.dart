import 'package:allemant_peritos/configs/sizebox.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/coordinacion/coordinacion_cubit.dart';
import 'package:allemant_peritos/features/widgets/loading_indicators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                SizeBox.sizeRow,

                //NRO DE COORDINACION
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
                  displayInspeccion!.recordsFind[0].coordinacionCorrelativo
                      .toUpperCase(),
                  style: const TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
                ),
                SizeBox.sizeRow,

                //RIESGO
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
                SizeBox.sizeRow,
                //FECHA DE SOLICITUD
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
                SizeBox.sizeRow,
                //FECHA DE ENTREGA
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
                  displayInspeccion!.recordsFind[0].fechaEntrega.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
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
                //PERITO
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    SizeBox.sizeSpaceWidthIcon,
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
                  displayInspeccion!.recordsFind[0].fechaSolicitud
                      .toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF545D68),
                      fontWeight: FontWeight.bold),
                ),
                SizeBox.sizeRow,
              ],
            ),
          ),
        ),
      )
    ]);

    /* Scaffold(
      body: Stack(
        children: [
          ListView(children: <Widget>[
            Text(displayInspeccion!.recordsFind[0].clienteNombre),
          ])
        ],
      ),
    ); */
  }
}
/*@override
  Widget build(BuildContext context) {
    const String assetName = 'assets/icon/svg/newspaper.svg';
    final Widget svgIcon = SvgPicture.asset(
      assetName,
    );
    return Scaffold(
      body: Stack(children: [
        ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //InspeccionDetailMapa(),
            //showMap(),

            InkWell(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(80), blurRadius: 10.0),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Iconsax.user_cirlce_add),
                          SizedBox(
                            width: 8,
                          ),
                          Text("COORDINADOR",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.coordinadorNombre.toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          svgIcon,
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("COORDINACIÓN",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.coordinacionCorrelativo,
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                       Row(
                        children: [
                          Icon(FontAwesome.exclamation_circle),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("RIESGO",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      changeColorRiesgo(displayInspeccion.riesgoNombre),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(FontAwesome.calendar),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("FECHA DE SOLICITUD",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.fechaSolicitud,
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(FontAwesome.calendar),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("FECHA DE ENTREGA",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.fechaEntrega,
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesome.black_tie),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("SOLICITANTE",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.solicitanteNombre,
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesome.user),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("CLIENTE",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.clienteNombre.toString(),
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(MaterialIcons.home),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("TIPO DE INSPECCIÓN",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.tipoInspeccionNombre.toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesome5.user_circle),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("PERITO",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.peritoNombre.toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesome.male),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("CONTACTO",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.inspeccionContacto.toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesome.road),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("DIRECCIÓN",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.inspeccionDireccion.toUpperCase() ?? ,
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesome.window_maximize),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("SERVICIOS",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(displayInspeccion.servicioTipoNombre.toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesome.edit),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("OBSERVACIONES",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  color: Color.fromRGBO(233, 115, 44, 1),
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                          displayInspeccion.inspeccionObservacion.toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Color(0xFF545D68),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 14,
                      ), */
/* Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                    
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
 */

/* Widget changeColorRiesgo(tipo) {
    switch (tipo) {
      case 'BAJO':
        return Container(
          height: 30,
          width: 60,
          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              color: Colors.green,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(80), blurRadius: 10.0),
              ]),
          child: Center(
            child: Text(displayInspeccion.riesgoNombre,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(80), blurRadius: 10.0),
              ]),
          child: Center(
            child: Text(displayInspeccion.riesgoNombre,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              color: Colors.red,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(80), blurRadius: 10.0),
              ]),
          child: Center(
            child: Text(displayInspeccion.riesgoNombre,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    //backgroundColor: Colors.green,
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        );

      default:
    }
  } */
