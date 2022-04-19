// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'tipo_puerta_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TipoPuertaInmueble _$$_TipoPuertaInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_TipoPuertaInmueble',
      json,
      ($checkedConvert) {
        final val = _$_TipoPuertaInmueble(
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

Map<String, dynamic> _$$_TipoPuertaInmuebleToJson(
        _$_TipoPuertaInmueble instance) =>
    <String, dynamic>{
      'puerta_tipo_id': instance.puertaTipoId,
      'puerta_tipo_nombre': instance.puertaTipoNombre,
      'puerta_tipo_estado': instance.puertaTipoEstado,
    };
