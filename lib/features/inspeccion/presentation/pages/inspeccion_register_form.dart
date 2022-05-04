import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/configs/constants_alertify.dart';
import 'package:allemant_peritos/configs/sizebox.dart';
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
import 'package:allemant_peritos/features/inspeccion/presentation/application/dropdown/dropdown_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/location/location_cubit.dart';
import 'package:allemant_peritos/features/widgets/alertify.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class InspeccionRegisterForm extends StatefulWidget {
  const InspeccionRegisterForm({Key? key, required this.inspeccionID})
      : super(key: key);
  final String inspeccionID;

  @override
  State<InspeccionRegisterForm> createState() => _InspeccionRegisterFormState();
}

class _InspeccionRegisterFormState extends State<InspeccionRegisterForm> {
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
  @override
  void initState() {
    super.initState();
    context.read<DropdownCubit>().ocupadoInmueble("");
    context.read<LocationCubit>().fetchUserCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VisitasBloc, VisitasState>(
      listener: (context, state) {
        state.maybeWhen(success: (success) {
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
            /*  onDismiss: () {
              AutoRouter.of(context).navigateNamed('/home');
            }, */
          ).show();
        });
      },
      child: Form(
          child: Column(children: [
        TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          controller: _atendidoController,
          maxLines: 1,
          textCapitalization: TextCapitalization.characters,
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelText: 'ATENTIDO POR:',
            labelStyle: const TextStyle(
              fontSize: 16,
            ),
            hintText: 'NOMBRE DEL PROPIETARIO',
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
              Iconsax.user,
              color: Color(0xFF114472),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
        SizeBox.sizeRow,
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
        BlocBuilder<DropdownCubit, DropdownState>(
          builder: (_, state) {
            if (state is DropOcupadoInmueble) {
              ///OCUPADO
              final dropDownOcupado = state.ocupadoInmueble
                  .map<DropdownMenuItem<OcupadoInmueble>>((uso) {
                return DropdownMenuItem<OcupadoInmueble>(
                  child: Text(uso.ocupadoNombre!),
                  value: uso,
                );
              });

              ///USO

              final dropDownUsoImueble =
                  state.usoInmueble.map<DropdownMenuItem<UsoInmueble>>((uso) {
                return DropdownMenuItem<UsoInmueble>(
                  child: Text(uso.usoNombre!),
                  value: uso,
                );
              });
              //MURO
              final dropDownMuroImueble =
                  state.muroInmueble.map<DropdownMenuItem<MuroInmueble>>((uso) {
                return DropdownMenuItem<MuroInmueble>(
                  child: Text(uso.muroNombre!),
                  value: uso,
                );
              });

              //TECHO
              final dropDownTechoImueble = state.techoInmueble
                  .map<DropdownMenuItem<TechoInmueble>>((uso) {
                return DropdownMenuItem<TechoInmueble>(
                  child: Text(uso.techoNombre!),
                  value: uso,
                );
              });

              //Instalacion Electrica Inmueble
              final dropDownInstalacionElectricaInmueble = state
                  .iElectricaInmueble
                  .map<DropdownMenuItem<InstalacionElectricaInmueble>>(
                      (ielectrica) {
                return DropdownMenuItem<InstalacionElectricaInmueble>(
                  child: Text(ielectrica.instalacionElectricaNombre!),
                  value: ielectrica,
                );
              });
              //Instalacion Sanitaria Inmueble

              final dropDownInstalacionSanitariamente = state.iSanitariaInmueble
                  .map<DropdownMenuItem<InstalacionSanitariaInmueble>>(
                      (isanitaria) {
                return DropdownMenuItem<InstalacionSanitariaInmueble>(
                  child: Text(isanitaria.instalacionSanitariaNombre!),
                  value: isanitaria,
                );
              });

              //CALIDAD DE CONSTRUCCIÓN Inmueble

              final dropDownCalidadConstruccion = state.cConstruccionInmueble
                  .map<DropdownMenuItem<CalidadConstruccionInmueble>>(
                      (cConstruccion) {
                return DropdownMenuItem<CalidadConstruccionInmueble>(
                  child: Text(cConstruccion.calidadConstruccionNombre!),
                  value: cConstruccion,
                );
              });
              final dropDownPuertaSistema = state.puertaSistemaInmueble
                  .map<DropdownMenuItem<PuertaSistemaInmueble>>((psistema) {
                return DropdownMenuItem<PuertaSistemaInmueble>(
                  child: Text(psistema.puertaSistemaNombre!),
                  value: psistema,
                );
              });

              //PUERTA MATERIAL
              final dropDownPuertaMaterial = state.puertaMaterialInmueble
                  .map<DropdownMenuItem<PuertaMaterialInmueble>>((pmaterial) {
                return DropdownMenuItem<PuertaMaterialInmueble>(
                  child: Text(pmaterial.puertaMaterialNombre!),
                  value: pmaterial,
                );
              });
              //PUERTA TIPO
              final dropDownPuertaTipo = state.puertaTipoInmueble
                  .map<DropdownMenuItem<PuertaTipoInmueble>>((ptipo) {
                return DropdownMenuItem<PuertaTipoInmueble>(
                  child: Text(ptipo.puertaTipoNombre!),
                  value: ptipo,
                );
              });
              //VENTANA MARCO
              final dropDownVentanaMarco = state.ventanaMarcoInmueble
                  .map<DropdownMenuItem<VentanaMarcoInmueble>>((vMarco) {
                return DropdownMenuItem<VentanaMarcoInmueble>(
                  child: Text(vMarco.ventanaMarcoNombre!),
                  value: vMarco,
                );
              });

              //VENTANA VIDRIO
              final dropDownVentanaVidrio = state.ventanaVidrioInmueble
                  .map<DropdownMenuItem<VentanaVidrioInmueble>>((vVidrio) {
                return DropdownMenuItem<VentanaVidrioInmueble>(
                  child: Text(vVidrio.ventanaVidrioNombre!),
                  value: vVidrio,
                );
              });
              //VENTANA SISTEMA
              final dropDownVentanaSistema = state.ventanaSistemaInmueble
                  .map<DropdownMenuItem<VentanaSistemaInmueble>>((vSistema) {
                return DropdownMenuItem<VentanaSistemaInmueble>(
                  child: Text(vSistema.ventanaSistemaNombre ?? ""),
                  value: vSistema,
                );
              });
              //PISO
              final dropDownPiso = state.pisoInmueble
                  .map<DropdownMenuItem<PisoInmueble>>((pisos) {
                return DropdownMenuItem<PisoInmueble>(
                  child: Text(pisos.pisosNombre!),
                  value: pisos,
                );
              });
              //REVESTIMIENTO
              final dropDownRevestimiento = state.revestimientoInmueble
                  .map<DropdownMenuItem<RevestimientoInmueble>>(
                      (revestimiento) {
                return DropdownMenuItem<RevestimientoInmueble>(
                  child: Text(revestimiento.revestimientoNombre!),
                  value: revestimiento,
                );
              });
              //INFRAESTRUCTURA
              final dropDownInfraestructura = state.infraestructuraInmueble
                  .map<DropdownMenuItem<InfraestructuraInmueble>>(
                      (infraestructura) {
                return DropdownMenuItem<InfraestructuraInmueble>(
                  child: Text(infraestructura.infraestructuraDisponibleNombre!),
                  value: infraestructura,
                );
              });
              //INFRAESTRUCTURA CALIDAD
              final dropDownInfraestructuraCalidad = state
                  .infraestructuraCalidadInmueble
                  .map<DropdownMenuItem<InfraestructuraCalidadInmueble>>(
                      (infraestructura) {
                return DropdownMenuItem<InfraestructuraCalidadInmueble>(
                  child: Text(infraestructura.infraestructuraCalidadNombre!),
                  value: infraestructura,
                );
              });
              //INFRAESTRUCTURA ESTADO CONSERVACION
              final dropDownInfraestructuraEstadoC = state
                  .infraestructuraEstadoCInmueble
                  .map<DropdownMenuItem<InfraestructuraEstadoConservacion>>(
                      (infraestructura) {
                return DropdownMenuItem<InfraestructuraEstadoConservacion>(
                  child:
                      Text(infraestructura.infraestructuraConservacionNombre!),
                  value: infraestructura,
                );
              });
              return Column(
                children: [
                  ///OCUPADO
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<OcupadoInmueble>(
                              value: ocupadoValue,
                              isExpanded: true,
                              hint: const Text(
                                  "SELECCIONE QUIEN OCUPA EL INMUEBLE"),
                              onChanged: (newValue) {
                                setState(() {
                                  ocupadoValue = newValue;
                                });
                              },
                              items: dropDownOcupado.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  ///USO
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<UsoInmueble>(
                              isExpanded: true,
                              value: usoValue,
                              hint:
                                  const Text("SELECCIONE EL USO DEL INMUEBLE"),
                              onChanged: (newValue) {
                                setState(() {
                                  usoValue = newValue;
                                });
                              },
                              items: dropDownUsoImueble.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "DETALLE DE LA EDIFICACIÓN",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 10.0),

                  ///MURO
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<MuroInmueble>(
                              value: muroValue,
                              hint: const Text("TIPO DE MURO DEL INMUEBLE"),
                              onChanged: (newValue) {
                                setState(() {
                                  muroValue = newValue;
                                });
                              },
                              items: dropDownMuroImueble.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  /// TECHO
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<TechoInmueble>(
                              value: techoValue,
                              isExpanded: true,
                              hint: const Text("TIPO DE TECHO DEL INMUEBLE"),
                              onChanged: (newValue) {
                                setState(() {
                                  techoValue = newValue;
                                });
                              },
                              items: dropDownTechoImueble.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  /// TECHO

                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InstalacionElectricaInmueble>(
                              value: iElectricaValue,
                              isExpanded: true,
                              hint: const Text("TIPO DE INSTALACIÓN ELECTRICA"),
                              onChanged: (newValue) {
                                setState(() {
                                  iElectricaValue = newValue;
                                });
                              },
                              items: dropDownInstalacionElectricaInmueble
                                  .toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  /// INSTALACION SANITARIA
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InstalacionSanitariaInmueble>(
                              value: iSanitariaValue,
                              isExpanded: true,
                              hint: const Text("TIPO DE INSTALACIÓN SANITARIA"),
                              onChanged: (newValue) {
                                setState(() {
                                  iSanitariaValue = newValue;
                                });
                              },
                              items:
                                  dropDownInstalacionSanitariamente.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  /// CALIDAD DE CONSTRUCCIÓN
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<CalidadConstruccionInmueble>(
                              value: cConstruccion,
                              isExpanded: true,
                              hint: const Text("CALIDAD DE CONSTRUCCIÓN"),
                              onChanged: (newValue) {
                                setState(() {
                                  cConstruccion = newValue;
                                });
                              },
                              items: dropDownCalidadConstruccion.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ACABADOS",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 20.0),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "PUERTAS",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 10.0),

                  ///PUERTA TIPO
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<PuertaTipoInmueble>(
                              value: puertaTipoValue,
                              isExpanded: true,
                              hint: const Text("SELECCIONE TIPO DE PUERTA"),
                              onChanged: (newValue) {
                                setState(() {
                                  puertaTipoValue = newValue;
                                });
                              },
                              items: dropDownPuertaTipo.toList())),
                    ),
                  ),

                  const SizedBox(height: 10.0),

                  ///PUERTA SISTEMA
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, bottom: 0, top: 0),
                      child: Container(
                        height: 48,

                        width: MediaQuery.of(context)
                            .size
                            .width, //gives the width of the dropdown button
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF114472)),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),

                        child: Theme(
                          data: Theme.of(context).copyWith(
                              canvasColor: Colors
                                  .white, // background color for the dropdown items
                              buttonTheme: ButtonTheme.of(context).copyWith(
                                alignedDropdown:
                                    true, //If false (the default), then the dropdown's menu will be wider than its button.
                              )),
                          child: DropdownButtonHideUnderline(
                              child: DropdownButton<PuertaSistemaInmueble>(
                                  value: puertaSistemaValue,
                                  hint:
                                      const Text("SELECCION SISTEMA DE PUERTA"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      puertaSistemaValue = newValue;
                                    });
                                  },
                                  items: dropDownPuertaSistema.toList())),
                        ),
                      )),
                  const SizedBox(height: 10.0),

                  ///PUERTA MATERIAL
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<PuertaMaterialInmueble>(
                              value: puertaMaterialValue,
                              isExpanded: true,
                              hint: const Text(
                                  "SELECCIONE MATERIAL DE LA PUERTA"),
                              onChanged: (newValue) {
                                setState(() {
                                  puertaMaterialValue = newValue;
                                });
                              },
                              items: dropDownPuertaMaterial.toList())),
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "VENTANAS",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 10.0),

                  ///VENTANA MARCO
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, bottom: 0, top: 0),
                      child: Container(
                        height: 48,

                        width: MediaQuery.of(context)
                            .size
                            .width, //gives the width of the dropdown button
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF114472)),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),

                        child: Theme(
                          data: Theme.of(context).copyWith(
                              canvasColor: Colors
                                  .white, // background color for the dropdown items
                              buttonTheme: ButtonTheme.of(context).copyWith(
                                alignedDropdown:
                                    true, //If false (the default), then the dropdown's menu will be wider than its button.
                              )),
                          child: DropdownButtonHideUnderline(
                              child: DropdownButton<VentanaMarcoInmueble>(
                                  value: ventanaMarcoValue,
                                  isExpanded: true,
                                  hint: const Text(
                                      "SELECCIONE TIPO DE VENTANA DE MARCO"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      ventanaMarcoValue = newValue;
                                    });
                                  },
                                  items: dropDownVentanaMarco.toList())),
                        ),
                      )),

                  const SizedBox(height: 10.0),

                  ///VENTANA VIDRIO
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<VentanaVidrioInmueble>(
                              value: ventanaVidrioValue,
                              isExpanded: true,
                              hint: const Text(
                                  "SELECCION TIPO DE VENTANA DE VIDRIO"),
                              onChanged: (newValue) {
                                setState(() {
                                  ventanaVidrioValue = newValue;
                                });
                              },
                              items: dropDownVentanaVidrio.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  ///VENTANA SISTEMA
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<VentanaSistemaInmueble>(
                              isExpanded: true,
                              value: ventanaSistemaValue,
                              hint: const Text(
                                  "SELECCIONE TIPO DE SISTEMA DE VENTANA"),
                              onChanged: (newValue) {
                                setState(() {
                                  ventanaSistemaValue = newValue!;
                                });
                              },
                              items: dropDownVentanaSistema.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "PISOS",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 10.0),

                  ///PISO #1
                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<PisoInmueble>(
                              value: pisoValue,
                              hint: const Text("SELECCIONE TIPO DE PISO"),
                              onChanged: (newValue) {
                                setState(() {
                                  pisoValue = newValue!;
                                });
                              },
                              items: dropDownPiso.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  ///PISO #2

                  Container(
                    height: 48,

                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<PisoInmueble>(
                              value: pisoValue2,
                              hint: const Text("SELECCIONE TIPO DE PISO"),
                              onChanged: (newValue) {
                                setState(() {
                                  pisoValue2 = newValue!;
                                });
                              },
                              items: dropDownPiso.toList())),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "REVESTIMIENTO",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 10.0),

                  ///REVESTIMIENTO
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, bottom: 0, top: 0),
                      child: Container(
                        height: 48,

                        width: MediaQuery.of(context)
                            .size
                            .width, //gives the width of the dropdown button
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF114472)),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),

                        child: Theme(
                          data: Theme.of(context).copyWith(
                              canvasColor: Colors
                                  .white, // background color for the dropdown items
                              buttonTheme: ButtonTheme.of(context).copyWith(
                                alignedDropdown:
                                    true, //If false (the default), then the dropdown's menu will be wider than its button.
                              )),
                          child: DropdownButtonHideUnderline(
                              child: DropdownButton<RevestimientoInmueble>(
                                  value: revestimientoValue,
                                  hint: const Text(
                                      "SELECCIONE EL TIPO DE REVESTIMIENTO"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      revestimientoValue = newValue!;
                                    });
                                  },
                                  items: dropDownRevestimiento.toList())),
                        ),
                      )),
                  const SizedBox(height: 10.0),

                  ///REVESTIMIENTO 2

                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<RevestimientoInmueble>(
                              value: revestimientoValue2,
                              hint: const Text(
                                  "SELECCIONE EL TIPO DE REVESTIMIENTO"),
                              onChanged: (newValue) {
                                setState(() {
                                  revestimientoValue2 = newValue!;
                                });
                              },
                              items: dropDownRevestimiento.toList())),
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "INFRAESTRUCTURA",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 20.0),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "DISPONE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraInmueble>(
                              value: viasDisponibleValue,
                              hint: const Text("VIAS ASFALTADAS"),
                              onChanged: (newValue) {
                                setState(() {
                                  viasDisponibleValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructura.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraInmueble>(
                              value: veredasDisponibleValue,
                              hint: const Text("VEREDAS"),
                              onChanged: (newValue) {
                                setState(() {
                                  veredasDisponibleValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructura.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraInmueble>(
                              value: alcantarilladoDisponibleValue,
                              hint: const Text("ALCARANTILLADO"),
                              onChanged: (newValue) {
                                setState(() {
                                  alcantarilladoDisponibleValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructura.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraInmueble>(
                              value: aguaPotableDisponibleValue,
                              hint: const Text("AGUA POTABLE"),
                              onChanged: (newValue) {
                                setState(() {
                                  aguaPotableDisponibleValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructura.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraInmueble>(
                              value: alumbradoDisponibleValue,
                              hint: const Text("ALUMBRADO"),
                              onChanged: (newValue) {
                                setState(() {
                                  alumbradoDisponibleValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructura.toList())),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "CALIDAD",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraCalidadInmueble>(
                              value: viasCalidadValue,
                              hint: const Text("VIAS ASFALTADAS"),
                              onChanged: (newValue) {
                                setState(() {
                                  viasCalidadValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructuraCalidad.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraCalidadInmueble>(
                              value: veredasCalidadValue,
                              hint: const Text("VEREDAS"),
                              onChanged: (newValue) {
                                setState(() {
                                  veredasCalidadValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructuraCalidad.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraCalidadInmueble>(
                              value: alcantarilladoCalidadValue,
                              hint: const Text("ALCARANTILLADO"),
                              onChanged: (newValue) {
                                setState(() {
                                  alcantarilladoCalidadValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructuraCalidad.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraCalidadInmueble>(
                              value: aguaPotableCalidadValue,
                              hint: const Text("AGUA POTABLE"),
                              onChanged: (newValue) {
                                setState(() {
                                  aguaPotableCalidadValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructuraCalidad.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<InfraestructuraCalidadInmueble>(
                              value: alumbradoCalidadValue,
                              hint: const Text("ALUMBRADO"),
                              onChanged: (newValue) {
                                setState(() {
                                  alumbradoCalidadValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructuraCalidad.toList())),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ESTADO DE CONSERVACIÓN",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child:
                              DropdownButton<InfraestructuraEstadoConservacion>(
                                  value: viasEstadoConservacionValue,
                                  hint: const Text("VIAS ASFALTADAS"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      viasEstadoConservacionValue = newValue!;
                                    });
                                  },
                                  items:
                                      dropDownInfraestructuraEstadoC.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<
                                  InfraestructuraEstadoConservacion>(
                              value: veredasEstadoConservacionValue,
                              hint: const Text("VEREDAS"),
                              onChanged: (newValue) {
                                setState(() {
                                  veredasEstadoConservacionValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructuraEstadoC.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child:
                              DropdownButton<InfraestructuraEstadoConservacion>(
                                  value: alcantarilladoEstadoConservacionValue,
                                  hint: const Text("ALCARANTILLADO"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      alcantarilladoEstadoConservacionValue =
                                          newValue!;
                                    });
                                  },
                                  items:
                                      dropDownInfraestructuraEstadoC.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child:
                              DropdownButton<InfraestructuraEstadoConservacion>(
                                  value: aguaPotableEstadoConservacionValue,
                                  hint: const Text("AGUA POTABLE"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      aguaPotableEstadoConservacionValue =
                                          newValue!;
                                    });
                                  },
                                  items:
                                      dropDownInfraestructuraEstadoC.toList())),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF114472)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),

                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors
                              .white, // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<
                                  InfraestructuraEstadoConservacion>(
                              value: alumbradoEstadoConservacionValue,
                              hint: const Text("ALUMBRADO"),
                              onChanged: (newValue) {
                                setState(() {
                                  alumbradoEstadoConservacionValue = newValue!;
                                });
                              },
                              items: dropDownInfraestructuraEstadoC.toList())),
                    ),
                  ),
                ],
              );
            } else if (state is DropDownLoading) {
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
                          (state as DropDownErrorState).message,
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
                    context.read<DropdownCubit>().ocupadoInmueble("");
                  },
                  child: const Text('REINTENTAR'),
                )
              ],
            );
          },
        ),
        SizeBox.sizeRow,
        TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          controller: _detalleDistribucionController,
          maxLines: 4,
          style: const TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelText: 'DISTRIBUCIÓN DEL INMUEBLE',
            labelStyle: const TextStyle(
              fontSize: 16,
            ),
            hintText: 'INGRESE LA DISTRIBUCIÓN DEL INMUEBLE',
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
        TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          controller: _observacionController,
          maxLines: 3,
          style: const TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelText: 'OBSERVACIÓN DEL INMUEBLE',
            labelStyle: const TextStyle(
              fontSize: 16,
            ),
            hintText: 'INGRESE OBSERVACIÓN SUCITADA EN LA INSPECCIÓN',
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
                  primary: AppColors.lightGreen,
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
                  AutoRouter.of(context).replaceNamed('/home');
                },
                icon: const Icon(
                  FontAwesomeIcons.ban,
                  size: 22,
                ),
                label: const Text("CANCELAR"),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(50, 45),
                  primary: AppColors.lightRed,
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
        usuario: "3",
        distribucionInmueble: _detalleDistribucionController.text,
        observacion: _observacionController.text);
    _registerVisitaBloc.add(VisitasEvent.visitaSubmitted(newVisita));
  }
}
