import 'package:reactive_forms/reactive_forms.dart';

class InspeccionController {
  final FormGroup form = FormGroup({
    'atendido': FormControl(
      validators: [Validators.required],
      value: '',
    ),
    'direccionInspeccion': FormControl(
      validators: [Validators.required],
      value: '',
    ),
    'nroSuministro': FormControl(
      validators: [Validators.required],
      value: '',
    ),
    'nroPuerta': FormControl(
      validators: [Validators.required],
      value: '',
    ),
  });

  String get getAtendidoInspForm => form.control('atendido').value;
  String get getDireccionInspForm => form.control('direccionInspeccion').value;
  String get getNroSuministroForm => form.control('nroSuministro').value;
  String get getNroPuerta => form.control('nroPuerta').value;
}

final controller = InspeccionController();
