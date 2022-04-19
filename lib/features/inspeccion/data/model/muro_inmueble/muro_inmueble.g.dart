// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'muro_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MuroInmueble _$$_MuroInmuebleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MuroInmueble',
      json,
      ($checkedConvert) {
        final val = _$_MuroInmueble(
          muroId: $checkedConvert('muro_id', (v) => v as String?),
          muroNombre: $checkedConvert('muro_nombre', (v) => v as String?),
          muroEstado: $checkedConvert('muro_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'muroId': 'muro_id',
        'muroNombre': 'muro_nombre',
        'muroEstado': 'muro_estado'
      },
    );

Map<String, dynamic> _$$_MuroInmuebleToJson(_$_MuroInmueble instance) =>
    <String, dynamic>{
      'muro_id': instance.muroId,
      'muro_nombre': instance.muroNombre,
      'muro_estado': instance.muroEstado,
    };
