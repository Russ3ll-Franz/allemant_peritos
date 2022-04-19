// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'revestimiento_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RevestimientoInmueble _$$_RevestimientoInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_RevestimientoInmueble',
      json,
      ($checkedConvert) {
        final val = _$_RevestimientoInmueble(
          revestimientoId:
              $checkedConvert('revestimiento_id', (v) => v as String?),
          revestimientoNombre:
              $checkedConvert('revestimiento_nombre', (v) => v as String?),
          revestimientoEstado:
              $checkedConvert('revestimiento_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'revestimientoId': 'revestimiento_id',
        'revestimientoNombre': 'revestimiento_nombre',
        'revestimientoEstado': 'revestimiento_estado'
      },
    );

Map<String, dynamic> _$$_RevestimientoInmuebleToJson(
        _$_RevestimientoInmueble instance) =>
    <String, dynamic>{
      'revestimiento_id': instance.revestimientoId,
      'revestimiento_nombre': instance.revestimientoNombre,
      'revestimiento_estado': instance.revestimientoEstado,
    };
