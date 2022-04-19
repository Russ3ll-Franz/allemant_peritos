import 'package:allemant_peritos/configs/assets.dart';
import 'package:allemant_peritos/configs/colors.dart';
import 'package:allemant_peritos/configs/sizebox.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_electrica_inmueble/instalacion_electrica_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_sanitaria_inmueble/instalacion_sanitaria_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/muro_inmueble/muro_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ocupado_inmueble/ocupado_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_sistema_inmueble/puerta_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/techo_inmueble/techo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/dropdown/dropdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class InspeccionRegisterForm extends StatefulWidget {
  const InspeccionRegisterForm({Key? key}) : super(key: key);

  @override
  State<InspeccionRegisterForm> createState() => _InspeccionRegisterFormState();
}

class _InspeccionRegisterFormState extends State<InspeccionRegisterForm> {
  UsoInmueble? usoValue;
  OcupadoInmueble? ocupadoValue;
  MuroInmueble? muroValue;
  TechoInmueble? techoValue;
  InstalacionElectricaInmueble? iElectricaValue;
  InstalacionSanitariaInmueble? iSanitariaValue;
  PuertaSistemaInmueble? puertaSistemaValue;

  final TextEditingController _atendidoController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _nroSuministroController =
      TextEditingController();
  final TextEditingController _nroPuertaController = TextEditingController();
  final TextEditingController _detalleDistribucionController =
      TextEditingController();
  @override
  void initState() {
    super.initState();
    context.read<DropdownCubit>().ocupadoInmueble("");
  }

  @override
  Widget build(BuildContext context) {
    /*  context.read<DropdownCubit>().ocupadoInmueble(""); */

    return Form(
        child: Column(children: [
      TextFormField(
        autofocus: false,
        textInputAction: TextInputAction.next,
        controller: _atendidoController,
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          labelText: 'ATENTIDO POR:',
          labelStyle: const TextStyle(
            fontSize: 16,
          ),
          hintText: 'Ingrese la persona que acceso a la visita',
          hintStyle: const TextStyle(color: Color(0xFF114472)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10.0)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF114472), width: 1.2),
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
            borderSide: const BorderSide(color: Color(0xFF114472), width: 1.2),
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
            Iconsax.house,
            color: Color(0xFF114472),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
      SizeBox.sizeRow,
      TextFormField(
        autofocus: false,
        textInputAction: TextInputAction.next,
        controller: _nroSuministroController,
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
          hintStyle: const TextStyle(color: Color(0xFF114472)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10.0)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF114472), width: 1.2),
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
            Iconsax.battery_3full,
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
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          labelText: 'NRO DE PUERTA',
          labelStyle: const TextStyle(
            fontSize: 16,
          ),
          hintText: 'INGRESE EL NRODE PUERTA DEL DOMICILIO',
          hintStyle: const TextStyle(color: Color(0xFF114472)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10.0)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF114472), width: 1.2),
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
          prefixIcon: IconButton(
            icon: SvgPicture.asset(
              Assets.assetsIconSvgDoorClosed,
              color: const Color(0xFF114472),
              width: 22,
            ),
            onPressed: () {},
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
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
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
            final dropDownTechoImueble =
                state.techoInmueble.map<DropdownMenuItem<TechoInmueble>>((uso) {
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
            final dropDownPuertaSistema = state.puertaSistemaInmueble
                .map<DropdownMenuItem<PuertaSistemaInmueble>>((psistema) {
              return DropdownMenuItem<PuertaSistemaInmueble>(
                child: Text(psistema.puertaSistemaNombre!),
                value: psistema,
              );
            });
            return Column(
              children: [
                ///OCUPADO
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
                            child: DropdownButton<OcupadoInmueble>(
                                value: ocupadoValue,
                                hint: const Text(
                                    "SELECCIONE QUIEN OCUPA EL INMUEBLE"),
                                onChanged: (newValue) {
                                  setState(() {
                                    ocupadoValue = newValue;
                                  });
                                },
                                items: dropDownOcupado.toList())),
                      ),
                    )),
                const SizedBox(height: 10.0),

                ///USO
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
                            child: DropdownButton<UsoInmueble>(
                                value: usoValue,
                                hint: const Text(
                                    "SELECCIONE EL USO DEL INMUEBLE"),
                                onChanged: (newValue) {
                                  setState(() {
                                    usoValue = newValue;
                                  });
                                },
                                items: dropDownUsoImueble.toList())),
                      ),
                    )),
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
                    )),
                const SizedBox(height: 10.0),

                /// TECHO
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
                            child: DropdownButton<TechoInmueble>(
                                value: techoValue,
                                hint: const Text("TIPO DE TECHO DEL INMUEBLE"),
                                onChanged: (newValue) {
                                  setState(() {
                                    techoValue = newValue;
                                  });
                                },
                                items: dropDownTechoImueble.toList())),
                      ),
                    )),
                const SizedBox(height: 10.0),

                /// TECHO
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
                            child: DropdownButton<InstalacionElectricaInmueble>(
                                value: iElectricaValue,
                                hint:
                                    const Text("TIPO DE INSTALACIÓN ELECTRICA"),
                                onChanged: (newValue) {
                                  setState(() {
                                    iElectricaValue = newValue;
                                  });
                                },
                                items: dropDownInstalacionElectricaInmueble
                                    .toList())),
                      ),
                    )),
                const SizedBox(height: 10.0),

                /// INSTALACION SANITARIA
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
                            child: DropdownButton<InstalacionSanitariaInmueble>(
                                value: iSanitariaValue,
                                hint:
                                    const Text("TIPO DE INSTALACIÓN SANITARIA"),
                                onChanged: (newValue) {
                                  setState(() {
                                    iSanitariaValue = newValue;
                                  });
                                },
                                items: dropDownInstalacionSanitariamente
                                    .toList())),
                      ),
                    )),
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
                                hint: const Text("SELECCION SISTEMA DE PUERTA"),
                                onChanged: (newValue) {
                                  setState(() {
                                    puertaSistemaValue = newValue;
                                  });
                                },
                                items: dropDownPuertaSistema.toList())),
                      ),
                    )),
              ],
            );
          }
          return SizedBox.shrink();
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.home,
                size: 16,
              ),
              label: const Text("GRABAR"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(160, 40),
                primary: AppColors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                textStyle: const TextStyle(fontSize: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                minimumSize: const Size(160, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                textStyle: const TextStyle(fontSize: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              )),
        ],
      )
    ])

        /*  BlocBuilder<DropdownCubit, DropdownState>(
      builder: (_, state) {
        state.when(
            initial: () => const Offstage(),
            loading: () =>
                LoadingIndicators.instance.smallLoadingAnimation(context),
            dropDownUsoInmueble: (dropDownUsoInmueble) => {
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, bottom: 24, top: 0),
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context)
                            .size
                            .width, //gives the width of the dropdown button
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                                  value: dropDownValue,
                                  onChanged: (newValue) {
                                    setState(() {
                                      dropDownValue = newValue;
                                    });
                                  },
                                  items: dropDownUsoInmueble
                                      .map<DropdownMenuItem<UsoInmueble>>(
                                          (uso) {
                                    return DropdownMenuItem<UsoInmueble>(
                                      child: Text(uso.usoNombre!),
                                      value: uso,
                                    );
                                  }).toList())),
                        ),
                      )),
                },
            dropDownOcupadoInmueble: (dropDownOcupadoInmueble) {
              Padding(
                  padding: const EdgeInsets.only(
                      left: 0, right: 0, bottom: 24, top: 0),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context)
                        .size
                        .width, //gives the width of the dropdown button
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
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
                              onChanged: (newValue) {
                                setState(() {
                                  ocupadoValue = newValue;
                                });
                              },
                              items: dropDownOcupadoInmueble
                                  .map<DropdownMenuItem<OcupadoInmueble>>(
                                      (ocupado) {
                                return DropdownMenuItem<OcupadoInmueble>(
                                  child: Text(ocupado.ocupadoNombre!),
                                  value: ocupado,
                                );
                              }).toList())),
                    ),
                  ));
            },
            error: (error) => ErrorMessage(message: error));

        return SizedBox.shrink();
      }, */
        );
  }
}
