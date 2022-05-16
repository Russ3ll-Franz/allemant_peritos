import 'package:allemant_peritos/configs/sizebox.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailInspeccionPage extends StatelessWidget {
  const DetailInspeccionPage({Key? key, required this.receivedCoordinacion})
      : super(key: key);
  final Coordinacion receivedCoordinacion;

  Widget changeColorRiesgo(tipo) {
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
            child: Text(receivedCoordinacion.riesgoNombre!,
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
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(80), blurRadius: 10.0),
              ]),
          child: Center(
            child: Text(receivedCoordinacion.riesgoNombre!,
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
            child: Text(receivedCoordinacion.riesgoNombre!,
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
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon:
              const Icon(FontAwesomeIcons.arrowLeft, color: Color(0xFF545D68)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "HOJA DE COORDINACIÓN",
          style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 18,
              color: Color(0xFF545D68),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(80), blurRadius: 10.0),
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
                              receivedCoordinacion.coordinadorNombre!
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
                              receivedCoordinacion.coordinacionCorrelativo!
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
                                receivedCoordinacion.riesgoNombre),
                          ],
                        ),
                      ],
                    ),
                    SizeBox.sizeRow,

                    Row(
                      children: const [
                        Icon(FontAwesomeIcons.userSecret, size: 14),
                        SizeBox.sizeSpaceWidthIcon,
                        Text("PERITO :",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(233, 115, 44, 1),
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    SizeBox.sizeRow,
                    Text(
                      receivedCoordinacion.peritoNombre!.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF545D68),
                          fontWeight: FontWeight.bold),
                    ),

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
                      receivedCoordinacion.fechaSolicitud!.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF545D68),
                          fontWeight: FontWeight.bold),
                    ),
                    SizeBox.sizeRow,

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
                      receivedCoordinacion.fechaEntrega!.toUpperCase(),
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
                      receivedCoordinacion.solicitanteNombre!.toUpperCase(),
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
                      receivedCoordinacion.clienteNombre!.toUpperCase(),
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
                      receivedCoordinacion.tipoInspeccionNombre!.toUpperCase(),
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
                          receivedCoordinacion.contactoNombre!.toUpperCase(),
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
                      receivedCoordinacion.inspeccionDireccion!.toUpperCase(),
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
                      receivedCoordinacion.servicioTipoNombre!.toUpperCase(),
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
                      receivedCoordinacion.inspeccionObservacion!.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF545D68),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (receivedCoordinacion.tipoInspeccionId! ==
                                      "1") {
                                    AutoRouter.of(context).push(
                                        InspeccionRegisterExteriorRoute(
                                            inspeccionID: receivedCoordinacion
                                                .inspeccionId!));
                                  } else {
                                    AutoRouter.of(context).push(
                                        InspeccionRegisterRoute(
                                            inspeccionID: receivedCoordinacion
                                                .inspeccionId!));
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF238F50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Registrar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
