// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'puerta_tipo_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PuertaTipoInmueble _$$_PuertaTipoInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PuertaTipoInmueble',
      json,
      ($checkedConvert) {
        final val = _$_PuertaTipoInmueble(
          puertaTipoId: $checkedConvert('puerta_tipo_id', (v) => v as String?),
          puertaTipoNombre:
              $checkedConvert('puerta_tipo_nombre', (v) => v as String?),
          puertaTipoEstado:
              $checkedConvert('puerta_tipo_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'puertaTipoId': 'puerta_tipo_id',
        'puertaTipoNombre': 'puerta_tipo_nombre',
        'puertaTipoEstado': 'puerta_tipo_estado'
      },
    );

Map<String, dynamic> _$$_PuertaTipoInmuebleToJson(
        _$_PuertaTipoInmueble instance) =>
    <String, dynamic>{
      'puerta_tipo_id': instance.puertaTipoId,
      'puerta_tipo_nombre': instance.puertaTipoNombre,
      'puerta_tipo_estado': instance.puertaTipoEstado,
    };
