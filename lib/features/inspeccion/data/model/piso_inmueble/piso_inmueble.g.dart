// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'piso_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PisoInmueble _$$_PisoInmuebleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PisoInmueble',
      json,
      ($checkedConvert) {
        final val = _$_PisoInmueble(
          pisosId: $checkedConvert('pisos_id', (v) => v as String?),
          pisosNombre: $checkedConvert('pisos_nombre', (v) => v as String?),
          pisosEstado: $checkedConvert('pisos_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'pisosId': 'pisos_id',
        'pisosNombre': 'pisos_nombre',
        'pisosEstado': 'pisos_estado'
      },
    );

Map<String, dynamic> _$$_PisoInmuebleToJson(_$_PisoInmueble instance) =>
    <String, dynamic>{
      'pisos_id': instance.pisosId,
      'pisos_nombre': instance.pisosNombre,
      'pisos_estado': instance.pisosEstado,
    };
