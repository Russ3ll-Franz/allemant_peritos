// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'puerta_sistema_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PuertaSistemaInmueble _$$_PuertaSistemaInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PuertaSistemaInmueble',
      json,
      ($checkedConvert) {
        final val = _$_PuertaSistemaInmueble(
          puertaSistemaId:
              $checkedConvert('puerta_sistema_id', (v) => v as String?),
          puertaSistemaNombre:
              $checkedConvert('puerta_sistema_nombre', (v) => v as String?),
          puertaSistemaEstado:
              $checkedConvert('puerta_sistema_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'puertaSistemaId': 'puerta_sistema_id',
        'puertaSistemaNombre': 'puerta_sistema_nombre',
        'puertaSistemaEstado': 'puerta_sistema_estado'
      },
    );

Map<String, dynamic> _$$_PuertaSistemaInmuebleToJson(
        _$_PuertaSistemaInmueble instance) =>
    <String, dynamic>{
      'puerta_sistema_id': instance.puertaSistemaId,
      'puerta_sistema_nombre': instance.puertaSistemaNombre,
      'puerta_sistema_estado': instance.puertaSistemaEstado,
    };
