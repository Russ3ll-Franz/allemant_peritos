import 'package:allemant_peritos/configs/assets.dart';
import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/configs/constants_alertify.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/bloc/visitas_bloc.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/visita/visita_cubit.dart';
import 'package:allemant_peritos/features/widgets/alertify.dart';
import 'package:allemant_peritos/features/widgets/loading_indicators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconsax/iconsax.dart';

class InspeccionRegisterPage extends StatelessWidget {
  final String inspeccionID;

  InspeccionRegisterPage({Key? key, required this.inspeccionID})
      : super(key: key);

  final _registerFormKey = GlobalKey<FormBuilderState>();
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    child: FormBuilder(
                        key: _registerFormKey,
                        child: Column(
                          children: [
                            FormBuilderTextField(
                              name: 'atendido',
                              autofocus: false,
                              textInputAction: TextInputAction.next,
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
                                    borderRadius: BorderRadius.circular(10.0)),
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
                                      color: Color.fromARGB(255, 192, 11, 11)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: const Icon(
                                  Iconsax.user,
                                  color: Color(0xFF114472),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.max(context, 5,
                                    errorText:
                                        "Se requiere ingresar un minimo de 5 caracteres "),
                                FormBuilderValidators.required(context),
                              ]),
                              onSaved: (value) {
                                visita.inspeccionId;
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                    label: const Text("CANCELAR"),
                                    style: ElevatedButton.styleFrom(
                                      primary: AppColors.lightRed,
                                      minimumSize: const Size(140, 40),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      textStyle: const TextStyle(fontSize: 16),
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
        ],
      ),
    );
  }

  void _validateRegisterFields(BuildContext context) {
    final _registerVisitaBloc = context.read<VisitasBloc>();
    if (_registerFormKey.currentState!.validate()) {
      final newVisita = Visita(inspeccionId: inspeccionID);
      _registerVisitaBloc.add(VisitasEvent.visitaSubmitted(newVisita));
    } else {}
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
