// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'uso_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsoInmueble _$$_UsoInmuebleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UsoInmueble',
      json,
      ($checkedConvert) {
        final val = _$_UsoInmueble(
          usoId: $checkedConvert('uso_id', (v) => v as String?),
          usoNombre: $checkedConvert('uso_nombre', (v) => v as String?),
          usoEstado: $checkedConvert('uso_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'usoId': 'uso_id',
        'usoNombre': 'uso_nombre',
        'usoEstado': 'uso_estado'
      },
    );

Map<String, dynamic> _$$_UsoInmuebleToJson(_$_UsoInmueble instance) =>
    <String, dynamic>{
      'uso_id': instance.usoId,
      'uso_nombre': instance.usoNombre,
      'uso_estado': instance.usoEstado,
    };
