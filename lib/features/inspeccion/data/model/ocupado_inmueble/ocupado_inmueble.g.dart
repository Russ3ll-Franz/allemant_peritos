// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'ocupado_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OcupadoInmueble _$$_OcupadoInmuebleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_OcupadoInmueble',
      json,
      ($checkedConvert) {
        final val = _$_OcupadoInmueble(
          ocupadoId: $checkedConvert('ocupado_id', (v) => v as String?),
          ocupadoNombre: $checkedConvert('ocupado_nombre', (v) => v as String?),
          ocupadoEstado: $checkedConvert('ocupado_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'ocupadoId': 'ocupado_id',
        'ocupadoNombre': 'ocupado_nombre',
        'ocupadoEstado': 'ocupado_estado'
      },
    );

Map<String, dynamic> _$$_OcupadoInmuebleToJson(_$_OcupadoInmueble instance) =>
    <String, dynamic>{
      'ocupado_id': instance.ocupadoId,
      'ocupado_nombre': instance.ocupadoNombre,
      'ocupado_estado': instance.ocupadoEstado,
    };
