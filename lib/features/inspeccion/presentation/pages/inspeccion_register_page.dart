import 'package:allemant_peritos/configs/assets.dart';
import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/configs/constants_alertify.dart';
import 'package:allemant_peritos/configs/sizebox.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/bloc/visitas_bloc.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/dropdown/dropdown_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_register_form.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/widgets/inspeccion_form_controller.dart';
import 'package:allemant_peritos/features/widgets/alertify.dart';
import 'package:allemant_peritos/features/widgets/loading_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:reactive_forms/reactive_forms.dart';

class InspeccionRegisterPage extends StatelessWidget {
  final String inspeccionID;

  InspeccionRegisterPage({Key? key, required this.inspeccionID})
      : super(key: key);

  final _registerFormKey = GlobalKey<FormBuilderState>();
  final visita = Visita();
  final TextEditingController _atendidoController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _nro_suministroController =
      TextEditingController();
  final TextEditingController _nro_puertaController = TextEditingController();
  final TextEditingController _detalleDistribucionController =
      TextEditingController();
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
                        BlocListener<VisitasBloc, VisitasState>(
                            listener: (context, state) {
                              state.maybeWhen(success: (success) {
                                Alertify(
                                  content: success!.message,
                                  context: context,
                                  isDismissible: true,
                                  title: 'REGISTRADO',
                                  alertType: AlertifyType.success,
                                  buttonText: 'OK',
                                  animationType: AnimationType.outToIn,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  onDismiss: () {
                                    AutoRouter.of(context)
                                        .navigateNamed('/home');
                                  },
                                ).show();
                              }, orElse: () {
                                Alertify(
                                  content: "NO SE PUDO GRABAR",
                                  context: context,
                                  isDismissible: true,
                                  title: 'ERROR',
                                  alertType: AlertifyType.error,
                                  buttonText: 'OK',
                                  animationType: AnimationType.outToIn,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  onDismiss: () {
                                    AutoRouter.of(context)
                                        .navigateNamed('/home');
                                  },
                                ).show();
                              });
                            },
                            child:
                                const InspeccionRegisterForm() /* Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  children: [InspeccionRegisterForm()],
                                )) */
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

  void _validateRegisterFields(BuildContext context) {
    final _registerVisitaBloc = context.read<VisitasBloc>();

    if (controller.form.valid) {
      final newVisita = Visita(
          inspeccionId: inspeccionID,
          atendido: _atendidoController.text,
          direccion: _direccionController.text);
      _registerVisitaBloc.add(VisitasEvent.visitaSubmitted(newVisita));
    } else {
      controller.form.markAllAsTouched();
    }

    /* if (_registerFormKey.currentState!.validate()) {
      final newVisita = Visita(
          inspeccionId: widget.inspeccionID,
          atendido: _atendidoController.text,
          direccion: _direccionController.text);
      _registerVisitaBloc.add(VisitasEvent.visitaSubmitted(newVisita));
    } else {} */
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "REGISTRAR INSPECCIÓN",
        style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 18,
            color: Color(0xFF545D68),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

/* class _RegisterVisitaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<VisitasBloc, VisitasState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {

      },
    );
  }
} */
