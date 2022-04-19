// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'puerta_material_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PuertaMaterialInmueble _$$_PuertaMaterialInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PuertaMaterialInmueble',
      json,
      ($checkedConvert) {
        final val = _$_PuertaMaterialInmueble(
          puertaMaterialId:
              $checkedConvert('puerta_material_id', (v) => v as String?),
          puertaMaterialNombre:
              $checkedConvert('puerta_material_nombre', (v) => v as String?),
          puertaMaterialEstado:
              $checkedConvert('puerta_material_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'puertaMaterialId': 'puerta_material_id',
        'puertaMaterialNombre': 'puerta_material_nombre',
        'puertaMaterialEstado': 'puerta_material_estado'
      },
    );

Map<String, dynamic> _$$_PuertaMaterialInmuebleToJson(
        _$_PuertaMaterialInmueble instance) =>
    <String, dynamic>{
      'puerta_material_id': instance.puertaMaterialId,
      'puerta_material_nombre': instance.puertaMaterialNombre,
      'puerta_material_estado': instance.puertaMaterialEstado,
    };
