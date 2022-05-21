import 'package:allemant_peritos/application/bloc/authentication/authentication_bloc.dart';
import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/configs/constants_alertify.dart';
import 'package:allemant_peritos/configs/sizebox.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/calidad_construccion_inmueble/calidad_construccion_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_calidad_inmueble/infraestructura_calidad_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_estado_conservacion/infraestructura_estado_conservacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_inmueble/infraestructura_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_electrica_inmueble/instalacion_electrica_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_sanitaria_inmueble/instalacion_sanitaria_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/muro_inmueble/muro_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ocupado_inmueble/ocupado_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/piso_inmueble/piso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_material_inmueble/puerta_material_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_sistema_inmueble/puerta_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_tipo_inmueble/puerta_tipo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/revestimiento_inmueble/revestimiento_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/techo_inmueble/techo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_marco_inmueble/ventana_marco_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_sistema_inmueble/ventana_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_vidrio_inmueble/ventana_vidrio_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/bloc/visitas_bloc.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/location/location_cubit.dart';
import 'package:allemant_peritos/features/pages/routes.dart';
import 'package:allemant_peritos/features/widgets/alertify.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class InspeccionRegisterExteriorForm extends StatefulWidget {
  const InspeccionRegisterExteriorForm({Key? key, required this.inspeccionID})
      : super(key: key);
  final String inspeccionID;

  @override
  State<InspeccionRegisterExteriorForm> createState() =>
      _InspeccionRegisterExteriorFormState();
}

class _InspeccionRegisterExteriorFormState
    extends State<InspeccionRegisterExteriorForm> {
  final visita = Visita();

  UsoInmueble? usoValue;
  OcupadoInmueble? ocupadoValue;
  MuroInmueble? muroValue;
  TechoInmueble? techoValue;
  InstalacionElectricaInmueble? iElectricaValue;
  InstalacionSanitariaInmueble? iSanitariaValue;
  CalidadConstruccionInmueble? cConstruccion;
  PuertaSistemaInmueble? puertaSistemaValue;
  PuertaMaterialInmueble? puertaMaterialValue;
  PuertaTipoInmueble? puertaTipoValue;
  VentanaMarcoInmueble? ventanaMarcoValue;
  VentanaVidrioInmueble? ventanaVidrioValue;
  VentanaSistemaInmueble? ventanaSistemaValue;
  PisoInmueble? pisoValue;
  PisoInmueble? pisoValue2;
  RevestimientoInmueble? revestimientoValue;
  RevestimientoInmueble? revestimientoValue2;
  InfraestructuraInmueble? viasDisponibleValue;
  InfraestructuraInmueble? veredasDisponibleValue;
  InfraestructuraInmueble? alcantarilladoDisponibleValue;
  InfraestructuraInmueble? aguaPotableDisponibleValue;
  InfraestructuraInmueble? alumbradoDisponibleValue;
  InfraestructuraCalidadInmueble? viasCalidadValue;
  InfraestructuraCalidadInmueble? veredasCalidadValue;
  InfraestructuraCalidadInmueble? alcantarilladoCalidadValue;
  InfraestructuraCalidadInmueble? aguaPotableCalidadValue;
  InfraestructuraCalidadInmueble? alumbradoCalidadValue;
  InfraestructuraEstadoConservacion? viasEstadoConservacionValue;
  InfraestructuraEstadoConservacion? veredasEstadoConservacionValue;
  InfraestructuraEstadoConservacion? alcantarilladoEstadoConservacionValue;
  InfraestructuraEstadoConservacion? aguaPotableEstadoConservacionValue;
  InfraestructuraEstadoConservacion? alumbradoEstadoConservacionValue;
  String? latitud;
  String? longitud;

  final TextEditingController _atendidoController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _nroSuministroController =
      TextEditingController();
  final TextEditingController _nroPuertaController = TextEditingController();
  final TextEditingController _detalleDistribucionController =
      TextEditingController();
  final TextEditingController _observacionController = TextEditingController();
  String? userId;
  @override
  void initState() {
    super.initState();
    context.read<LocationCubit>().fetchUserCurrentLocation();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    userId = context.select(
      (AuthenticationBloc bloc) => bloc.state.user!.id,
    );
    return BlocListener<VisitasBloc, VisitasState>(
      listener: (context, state) {
        state.maybeWhen(
            success: (success) {
              Alertify(
                content: success!.message!,
                context: context,
                isDismissible: true,
                title: 'REGISTRADO',
                alertType: AlertifyType.success,
                buttonText: 'OK',
                animationType: AnimationType.outToIn,
                barrierColor: Colors.black.withOpacity(0.5),
                onDismiss: () {
                  AutoRouter.of(context).replaceNamed('/home');
                },
              ).show();
            },
            error: (error) {
              Alertify(
                content: error,
                context: context,
                isDismissible: true,
                title: 'ERROR',
                alertType: AlertifyType.error,
                buttonText: 'OK',
                animationType: AnimationType.outToIn,
                barrierColor: Colors.black.withOpacity(0.5),
                /*  onDismiss: () {
              AutoRouter.of(context).navigateNamed('/home');
            }, */
              ).show();
            },
            orElse: () {});
      },
      child: Form(
          child: Column(children: [
        TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          controller: _direccionController,
          maxLines: 2,
          textCapitalization: TextCapitalization.characters,
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelText: 'DIRECCIÓN DE INSPECCIÓN',
            labelStyle: const TextStyle(
              fontSize: 16,
            ),
            hintText: 'INGRESE LA DIRECCIÓN DEL DOMICILIO',
            hintStyle: const TextStyle(color: Color(0xFF114472)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFF114472), width: 1.2),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 230, 35, 9)),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 192, 11, 11)),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(
              FontAwesomeIcons.houseChimneyWindow,
              color: Color(0xFF114472),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
        SizeBox.sizeRow,
        BlocBuilder<LocationCubit, LocationState>(builder: (_, state) {
          if (state is LocationPositionState) {
            latitud = state.position.latitude.toString();
            longitud = state.position.longitude.toString();

            return Column(
              children: [
                TextFormField(
                  autofocus: false,
                  initialValue: '$latitud,  $longitud',
                  maxLines: 1,
                  enabled: false,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    labelText: 'LATITUDE',
                    labelStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    hintStyle: const TextStyle(color: Color(0xFF114472)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFF114472), width: 1.2),
                        borderRadius: BorderRadius.circular(10.0)),
                    prefixIcon: const Icon(
                      FontAwesomeIcons.map,
                      color: Color(0xFF114472),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ],
            );
          } else if (state is LocationLoadingState) {
            return const CircularProgressIndicator();
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amber.shade300,
                ),
                child: Row(
                  children: [
                    const Icon(Iconsax.information, size: 26),
                    Expanded(
                      child: Text(
                        (state as LocationErrorState).message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  context.read<LocationCubit>().fetchUserCurrentLocation();
                },
                child: const Text('REINTENTAR'),
              )
            ],
          );
        }),
        SizeBox.sizeRow,
        TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          controller: _nroSuministroController,
          textCapitalization: TextCapitalization.characters,
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          maxLines: 1,
          /*   showErrors: (control) =>
                                                              control.invalid &&
                                                              control.touched &&
                                                              control.dirty, */
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelText: 'NRO DE SUMINISTRO DE LUZ O AGUA',
            labelStyle: const TextStyle(
              fontSize: 16,
            ),
            hintText: 'INGRESE EL SUMINISTRO DE LUZ O AGUA',
            hintStyle: const TextStyle(color: Color(0xFF114472), fontSize: 14),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFF114472), width: 1.2),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 230, 35, 9)),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 192, 11, 11)),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(
              FontAwesomeIcons.lightbulb,
              color: Color(0xFF114472),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
        SizeBox.sizeRow,
        TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          controller: _nroPuertaController,
          textCapitalization: TextCapitalization.characters,
          maxLines: 1,
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelText: 'NRO DE PUERTA',
            labelStyle: const TextStyle(
              fontSize: 16,
            ),
            hintText: 'INGRESE EL NRO DE PUERTA DEL DOMICILIO',
            hintStyle: const TextStyle(color: Color(0xFF114472), fontSize: 14),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFF114472), width: 1.2),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 230, 35, 9)),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 192, 11, 11)),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(
              FontAwesomeIcons.doorClosed,
              color: Color(0xFF114472),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
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
        SizeBox.sizeRow,
        TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          controller: _observacionController,
          textCapitalization: TextCapitalization.characters,
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          maxLines: 3,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelText: 'OBSERVACIÓN DEL INMUEBLE',
            labelStyle: const TextStyle(
              fontSize: 14,
            ),
            hintText:
                'INGRESE OBSERVACIÓN SUCITADA EN LA INSPECCIÓN O VIAS PRINCIPALES',
            hintStyle: const TextStyle(color: Color(0xFF114472)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFF114472), width: 1.2),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 230, 35, 9)),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 192, 11, 11)),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(
              Iconsax.user,
              color: Color(0xFF114472),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
        SizeBox.sizeRow,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton.icon(
                onPressed: () {
                  _validateRegisterFields(context);
                },
                icon: const Icon(
                  FontAwesomeIcons.floppyDisk,
                  size: 22,
                ),
                label: const Text("GRABAR"),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(50, 45),
                  minimumSize: const Size(150, 45),
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                )),
            ElevatedButton.icon(
                onPressed: () {
/*                   AutoRouter.of(context).replaceNamed('/home');
 */
                  Navigator.pop(context);
                },
                icon: const Icon(
                  FontAwesomeIcons.ban,
                  size: 22,
                ),
                label: const Text("CANCELAR"),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(50, 45),
                  primary: Colors.red,
                  minimumSize: const Size(150, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                )),
          ],
        )
      ])),
    );
  }

  void _validateRegisterFields(BuildContext context) {
    final _registerVisitaBloc = context.read<VisitasBloc>();

    final newVisita = Visita(
        inspeccionCodigo: widget.inspeccionID,
        atendido: _atendidoController.text,
        direccion: _direccionController.text,
        nroSuministro: _nroSuministroController.text,
        nroPuerta: _nroPuertaController.text,
        ocupadoCodigo: ocupadoValue?.ocupadoId ?? '0',
        usoCodigo: usoValue?.usoId ?? '0',
        muroCodigo: muroValue?.muroId ?? '0',
        techoCodigo: techoValue?.techoId ?? '0',
        instalacionElectricaCodigo:
            iElectricaValue?.instalacionElectricaId ?? '0',
        instalacionSanitariaCodigo:
            iSanitariaValue?.instalacionSanitariaId ?? '0',
        calidadConstruccionCodigo: cConstruccion?.calidadConstruccionId ?? '0',
        puertaTipoCodigo: puertaTipoValue?.puertaTipoId ?? '0',
        puertaSistemaCodigo: puertaSistemaValue?.puertaSistemaId ?? '0',
        puertaMaterialCodigo: puertaMaterialValue?.puertaMaterialId ?? '0',
        ventanaMarcoCodigo: ventanaMarcoValue?.ventanaMarcoId ?? '0',
        ventanaVidrioCodigo: ventanaVidrioValue?.ventanaVidrioId ?? '0',
        ventanaSistemaCodigo: ventanaSistemaValue?.ventanaSistemaId ?? '0',
        pisoTipoCodigo: pisoValue?.pisosId ?? '0',
        pisoTipo2Codigo: pisoValue2?.pisosId ?? '0',
        revestimientoTipoCodigo: revestimientoValue?.revestimientoId ?? '0',
        revestimientoTipo2Codigo: revestimientoValue2?.revestimientoId ?? '0',
        infraestructuraDisponibleViasCodigo:
            viasDisponibleValue?.infraestructuraDisponibleId ?? '0',
        infraestructuraDisponibleVeredasCodigo:
            veredasDisponibleValue?.infraestructuraDisponibleId ?? '0',
        infraestructuraDisponibleAlcantarilladoCodigo:
            alcantarilladoDisponibleValue?.infraestructuraDisponibleId ?? '0',
        infraestructuraDisponibleAguaCodigo:
            aguaPotableDisponibleValue?.infraestructuraDisponibleId ?? '0',
        infraestructuraDisponibleAlumbradoCodigo:
            alumbradoDisponibleValue?.infraestructuraDisponibleId ?? '0',
        infraestructuraCalidadViasCodigo:
            viasCalidadValue?.infraestructuraCalidadId ?? '0',
        infraestructuraCalidadVeredasCodigo:
            veredasCalidadValue?.infraestructuraCalidadId ?? '0',
        infraestructuraCalidadAlcantarilladoCodigo:
            alcantarilladoCalidadValue?.infraestructuraCalidadId ?? '0',
        infraestructuraCalidadAguaCodigo:
            aguaPotableCalidadValue?.infraestructuraCalidadId ?? '0',
        infraestructuraCalidadAlumbradoCodigo:
            alumbradoCalidadValue?.infraestructuraCalidadId ?? '0',
        infraestructuraConservacionViasCodigo:
            viasEstadoConservacionValue?.infraestructuraConservacionId ?? '0',
        infraestructuraConservacionVeredasCodigo:
            veredasEstadoConservacionValue?.infraestructuraConservacionId ?? '0',
        infraestructuraConservacionAlcantarilladoCodigo: alcantarilladoEstadoConservacionValue?.infraestructuraConservacionId ?? '0',
        infraestructuraConservacionAguaCodigo: aguaPotableEstadoConservacionValue?.infraestructuraConservacionId ?? '0',
        infraestructuraConservacionAlumbradoCodigo: alumbradoEstadoConservacionValue?.infraestructuraConservacionId ?? '0',
        latitud: latitud ?? "0.000000",
        longitud: longitud ?? "0.000000",
        usuario: userId,
        distribucionInmueble: _detalleDistribucionController.text,
        observacion: _observacionController.text);
    _registerVisitaBloc.add(VisitasEvent.visitaSubmitted(newVisita));
  }
}
