import 'package:allemant_peritos/configs/assets.dart';
import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/configs/constants_alertify.dart';
import 'package:allemant_peritos/configs/sizebox.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/bloc/visitas_bloc.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/dropdown/dropdown_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_cubit.dart';
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
    List<String> itemsUso = {
     "records_find": [
        {
            "uso_id": "1",
            "uso_nombre": "Vivienda",
            "uso_estado": "1"
        },
        {
            "uso_id": "2",
            "uso_nombre": "Comercio",
            "uso_estado": "1"
        },
        {
            "uso_id": "3",
            "uso_nombre": "Oficina",
            "uso_estado": "1"
        },
        {
            "uso_id": "4",
            "uso_nombre": "Desocupado",
            "uso_estado": "1"
        },
        {
            "uso_id": "5",
            "uso_nombre": "Almacen",
            "uso_estado": "1"
        },
        {
            "uso_id": "6",
            "uso_nombre": "Deposito",
            "uso_estado": "1"
        },
        {
            "uso_id": "7",
            "uso_nombre": "Taller",
            "uso_estado": "1"
        },
        {
            "uso_id": "8",
            "uso_nombre": "Otros usos",
            "uso_estado": "1"
        }
    ]
    }



    String? dropDownValueUso;

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
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              BlocBuilder<DropdownCubit, DropdownState>(
                                builder: (context, state) {
                                  return DropdownButton<String>(
                                      value: dropDownValueUso,
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                      ),
                                      isExpanded: true,
                                      onChanged: (String? val) {
                                        if (val != null) {
                                          dropDownValueUso = val;
                                        }
                                      },
                                      hint: Text(
                                        "Seleccione",
                                        style: TextStyle(
                                            color: Color(0xFF8B8B8B),
                                            fontSize: 15),
                                      ),
                                      items: itemsUso.map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        );
                                      }).toList());
                                },
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
