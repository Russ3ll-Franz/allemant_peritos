import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/dropdown/dropdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropDownUsoInmueble extends StatefulWidget {
  const DropDownUsoInmueble({Key? key}) : super(key: key);

  @override
  State<DropDownUsoInmueble> createState() => _DropDownUsoInmuebleState();
}

class _DropDownUsoInmuebleState extends State<DropDownUsoInmueble> {
  UsoInmueble? dropDownValue;

  @override
  void initState() {
    super.initState();
    context.read<DropdownCubit>().ocupadoInmueble("");
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropdownCubit, DropdownState>(builder: (_, state) {
      if (state is DropOcupadoInmueble) {
        final dropDownItems2 =
            state.usoInmueble.map<DropdownMenuItem<UsoInmueble>>((uso) {
          return DropdownMenuItem<UsoInmueble>(
            child: Text(uso.usoNombre!),
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
                    child: DropdownButton<UsoInmueble>(
                        value: dropDownValue,
                        hint: const Text("SELECCIONE UN TIPO DE USO "),
                        onChanged: (newValue) {
                          setState(() {
                            dropDownValue = newValue;
                          });
                        },
                        items: dropDownItems2.toList())),
              ),
            ));
      }
      return SizedBox.shrink();
    });
  }
}
