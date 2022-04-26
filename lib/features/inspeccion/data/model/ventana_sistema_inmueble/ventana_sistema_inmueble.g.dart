// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'ventana_sistema_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VentanaSistemaInmueble _$$_VentanaSistemaInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_VentanaSistemaInmueble',
      json,
      ($checkedConvert) {
        final val = _$_VentanaSistemaInmueble(
          ventanaSistemaId:
              $checkedConvert('ventana_sistema_id', (v) => v as String?),
          ventanaSistemaNombre:
              $checkedConvert('ventana_sistema_nombre', (v) => v as String?),
          ventanaSistemaEstado:
              $checkedConvert('ventana_sistema_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'ventanaSistemaId': 'ventana_sistema_id',
        'ventanaSistemaNombre': 'ventana_sistema_nombre',
        'ventanaSistemaEstado': 'ventana_sistema_estado'
      },
    );

Map<String, dynamic> _$$_VentanaSistemaInmuebleToJson(
        _$_VentanaSistemaInmueble instance) =>
    <String, dynamic>{
      'ventana_sistema_id': instance.ventanaSistemaId,
      'ventana_sistema_nombre': instance.ventanaSistemaNombre,
      'ventana_sistema_estado': instance.ventanaSistemaEstado,
    };
