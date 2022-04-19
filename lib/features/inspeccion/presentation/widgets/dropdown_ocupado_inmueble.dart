import 'package:allemant_peritos/features/inspeccion/data/model/ocupado_inmueble/ocupado_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/dropdown/dropdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropDownOcupadoInmueble extends StatefulWidget {
  const DropDownOcupadoInmueble({Key? key}) : super(key: key);

  @override
  State<DropDownOcupadoInmueble> createState() =>
      _DropDownOcupadoInmuebleState();
}

class _DropDownOcupadoInmuebleState extends State<DropDownOcupadoInmueble> {
  OcupadoInmueble? ocupadoValue;

  @override
  void initState() {
    super.initState();
    context.read<DropdownCubit>().ocupadoInmueble("");
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropdownCubit, DropdownState>(builder: (_, state) {
      if (state is DropOcupadoInmueble) {
        final dropDownItems =
            state.ocupadoInmueble.map<DropdownMenuItem<OcupadoInmueble>>((uso) {
          return DropdownMenuItem<OcupadoInmueble>(
            child: Text(uso.ocupadoNombre!),
            value: uso,
          );
        });
        return Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
            child: Container(
              height: 45,

              width: MediaQuery.of(context)
                  .size
                  .width, //gives the width of the dropdown button
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),

              child: Theme(
                data: Theme.of(context).copyWith(
                    canvasColor:
                        Colors.white, // background color for the dropdown items
                    buttonTheme: ButtonTheme.of(context).copyWith(
                      alignedDropdown:
                          true, //If false (the default), then the dropdown's menu will be wider than its button.
                    )),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<OcupadoInmueble>(
                        value: ocupadoValue,
                        hint: const Text("SELECCIONE QUIEN OCUPA EL INMUEBLE"),
                        onChanged: (newValue) {
                          setState(() {
                            ocupadoValue = newValue;
                          });
                        },
                        items: dropDownItems.toList())),
              ),
            ));
      }
      return SizedBox.shrink();
    });
  }
}
