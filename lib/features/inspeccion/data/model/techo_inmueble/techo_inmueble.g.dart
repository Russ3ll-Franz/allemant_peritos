// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'techo_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TechoInmueble _$$_TechoInmuebleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_TechoInmueble',
      json,
      ($checkedConvert) {
        final val = _$_TechoInmueble(
          techoId: $checkedConvert('techo_id', (v) => v as String?),
          techoNombre: $checkedConvert('techo_nombre', (v) => v as String?),
          techoEstado: $checkedConvert('techo_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'techoId': 'techo_id',
        'techoNombre': 'techo_nombre',
        'techoEstado': 'techo_estado'
      },
    );

Map<String, dynamic> _$$_TechoInmuebleToJson(_$_TechoInmueble instance) =>
    <String, dynamic>{
      'techo_id': instance.techoId,
      'techo_nombre': instance.techoNombre,
      'techo_estado': instance.techoEstado,
    };
