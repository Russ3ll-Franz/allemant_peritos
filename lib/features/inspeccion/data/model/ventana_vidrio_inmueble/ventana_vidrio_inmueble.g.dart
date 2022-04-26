// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'ventana_vidrio_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VentanaVidrioInmueble _$$_VentanaVidrioInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_VentanaVidrioInmueble',
      json,
      ($checkedConvert) {
        final val = _$_VentanaVidrioInmueble(
          ventanaVidrioId:
              $checkedConvert('ventana_vidrio_id', (v) => v as String?),
          ventanaVidrioNombre:
              $checkedConvert('ventana_vidrio_nombre', (v) => v as String?),
          ventanaVidrioEstado:
              $checkedConvert('ventana_vidrio_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'ventanaVidrioId': 'ventana_vidrio_id',
        'ventanaVidrioNombre': 'ventana_vidrio_nombre',
        'ventanaVidrioEstado': 'ventana_vidrio_estado'
      },
    );

Map<String, dynamic> _$$_VentanaVidrioInmuebleToJson(
        _$_VentanaVidrioInmueble instance) =>
    <String, dynamic>{
      'ventana_vidrio_id': instance.ventanaVidrioId,
      'ventana_vidrio_nombre': instance.ventanaVidrioNombre,
      'ventana_vidrio_estado': instance.ventanaVidrioEstado,
    };
