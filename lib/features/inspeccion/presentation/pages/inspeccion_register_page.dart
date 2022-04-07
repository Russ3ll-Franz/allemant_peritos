import 'package:allemant_peritos/configs/assets.dart';
import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/configs/constants_alertify.dart';
import 'package:allemant_peritos/configs/sizebox.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/bloc/visitas_bloc.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/widgets/inspeccion_form_controller.dart';
import 'package:allemant_peritos/features/widgets/alertify.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:reactive_forms/reactive_forms.dart';

class InspeccionRegisterPage extends StatefulWidget {
  final String inspeccionID;

  const InspeccionRegisterPage({Key? key, required this.inspeccionID})
      : super(key: key);

  @override
  State<InspeccionRegisterPage> createState() => _InspeccionRegisterPageState();
}

class _InspeccionRegisterPageState extends State<InspeccionRegisterPage> {
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: SingleChildScrollView(
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
                              AutoRouter.of(context).navigateNamed('/home');
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
                              AutoRouter.of(context).navigateNamed('/home');
                            },
                          ).show();
                        });
                      },
                      child: ReactiveForm(
                          formGroup: controller.form,
                          child: Column(
                            children: [
                              ReactiveTextField(
                                formControlName: 'atendido',
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                controller: _atendidoController,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  labelText: 'ATENTIDO POR:',
                                  labelStyle: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  hintText:
                                      'Ingrese la persona que acceso a la visita',
                                  hintStyle:
                                      const TextStyle(color: Color(0xFF114472)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF114472), width: 1.2),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xFF114472), width: 1.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 230, 35, 9)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 192, 11, 11)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: const Icon(
                                    Iconsax.user,
                                    color: Color(0xFF114472),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                ),
                                validationMessages: (control) => {
                                  ValidationMessage.required:
                                      "Se requiere ingresar datos",
                                },
                              ),
                              SizeBox.sizeRow,
                              ReactiveTextField(
                                formControlName: 'direccionInspeccion',
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                controller: _direccionController,
                                maxLines: 2,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  labelText: 'DIRECCIÓN DE INSPECCIÓN',
                                  labelStyle: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  hintText:
                                      'INGRESE LA DIRECCIÓN DEL DOMICILIO',
                                  hintStyle:
                                      const TextStyle(color: Color(0xFF114472)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF114472), width: 1.2),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xFF114472), width: 1.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 230, 35, 9)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 192, 11, 11)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: const Icon(
                                    Iconsax.house,
                                    color: Color(0xFF114472),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                ),
                                validationMessages: (control) => {
                                  ValidationMessage.required:
                                      "Se requiere ingresar datos",
                                },
                              ),
                              SizeBox.sizeRow,
                              ReactiveTextField(
                                formControlName: 'nroSuministro',
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                controller: _nro_suministroController,
                                maxLines: 1,
                                /*   showErrors: (control) =>
                                    control.invalid &&
                                    control.touched &&
                                    control.dirty, */
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  labelText: 'NRO DE SUMINISTRO DE LUZ O AGUA',
                                  labelStyle: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  hintText:
                                      'INGRESE EL SUMINISTRO DE LUZ O AGUA',
                                  hintStyle:
                                      const TextStyle(color: Color(0xFF114472)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF114472), width: 1.2),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xFF114472), width: 1.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 230, 35, 9)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 192, 11, 11)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: const Icon(
                                    Iconsax.battery_3full,
                                    color: Color(0xFF114472),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                ),
                                validationMessages: (control) => {
                                  ValidationMessage.required:
                                      "Se requiere ingresar datos",
                                },
                              ),
                              SizeBox.sizeRow,
                              ReactiveTextField(
                                formControlName: 'nroPuerta',
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                controller: _nro_puertaController,
                                maxLines: 1,
                                /*  showErrors: (control) =>
                                    control.invalid &&
                                    control.touched &&
                                    control.dirty, */
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  labelText: 'NRO DE PUERTA',
                                  labelStyle: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  hintText:
                                      'INGRESE EL NRODE PUERTA DEL DOMICILIO',
                                  hintStyle:
                                      const TextStyle(color: Color(0xFF114472)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF114472), width: 1.2),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xFF114472), width: 1.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 230, 35, 9)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 192, 11, 11)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: IconButton(
                                    icon: SvgPicture.asset(
                                      Assets.assetsIconSvgDoorClosed,
                                      color: const Color(0xFF114472),
                                      width: 22,
                                    ),
                                    onPressed: () {},
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                ),
                                validationMessages: (control) => {
                                  ValidationMessage.required:
                                      "Es obligatorio ingresar el numero de puerta",
                                },
                              ),
                              const SizedBox(height: 10.0),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "DETALLE DE LA INSPECCIÓN",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )),
                              const SizedBox(height: 10.0),
                              ReactiveTextField(
                                formControlName: 'nroPuerta',
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                controller: _nro_puertaController,
                                maxLines: 1,
                                /*   showErrors: (control) =>
                                    control.invalid &&
                                    control.touched &&
                                    control.dirty, */
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  labelText: 'NRO DE PUERTA',
                                  labelStyle: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  hintText:
                                      'INGRESE EL NRODE PUERTA DEL DOMICILIO',
                                  hintStyle:
                                      const TextStyle(color: Color(0xFF114472)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF114472), width: 1.2),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xFF114472), width: 1.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 230, 35, 9)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 192, 11, 11)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: const Icon(
                                    Iconsax.folder,
                                    color: Color(0xFF114472),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                ),
                                validationMessages: (control) => {
                                  ValidationMessage.required:
                                      "Se requiere ingresar datos",
                                },
                                onSubmitted: () =>
                                    controller.form.focus('nroPuerta'),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ElevatedButton.icon(
                                      onPressed: () {
                                        _validateRegisterFields(context);
                                      },
                                      icon: const Icon(
                                        FontAwesomeIcons.home,
                                        size: 16,
                                      ),
                                      label: const Text("GRABAR"),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(140, 40),
                                        primary: AppColors.lightGreen,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        textStyle:
                                            const TextStyle(fontSize: 16),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                      )),
                                  ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        FontAwesomeIcons.map,
                                        size: 16,
                                      ),
                                      label: const Text("CANCELAR"),
                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors.lightRed,
                                        minimumSize: const Size(140, 40),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        textStyle:
                                            const TextStyle(fontSize: 16),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                      )),
                                ],
                              ),
                            ],
                          )))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _validateRegisterFields(BuildContext context) {
    final _registerVisitaBloc = context.read<VisitasBloc>();

    if (controller.form.valid) {
      final newVisita = Visita(
          inspeccionId: widget.inspeccionID,
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
