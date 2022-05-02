import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_register_exteriores_form.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InspeccionRegisterExteriorPage extends StatelessWidget {
  final String inspeccionID;

  InspeccionRegisterExteriorPage({Key? key, required this.inspeccionID})
      : super(key: key);

  final visita = Visita();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, // dark text for status bar
        statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        InspeccionRegisterExteriorForm(
                          inspeccionID: inspeccionID,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

/*   void _validateRegisterFields(BuildContext context) {
    final _registerVisitaBloc = context.read<VisitasBloc>();

    if (controller.form.valid) {
      final newVisita = Visita(
          inspeccionId: inspeccionID,
          InspeccionRegisterForm.
          atendido: _atendidoController.text,
          direccion: _direccionController.text);
      _registerVisitaBloc.add(VisitasEvent.visitaSubmitted(newVisita));
    } else {
      controller.form.markAllAsTouched();
    }
 }
 */
  /* if (_registerFormKey.currentState!.validate()) {
      final newVisita = Visita(
          inspeccionId: widget.inspeccionID,
          atendido: _atendidoController.text,
          direccion: _direccionController.text);
      _registerVisitaBloc.add(VisitasEvent.visitaSubmitted(newVisita));
    } else {} */

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "INSPECCIÓN POR \nEXTERIORES",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            color: Color(0xFF545D68),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
