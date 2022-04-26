// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'infraestructura_calidad_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfraestructuraCalidadInmueble _$$_InfraestructuraCalidadInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_InfraestructuraCalidadInmueble',
      json,
      ($checkedConvert) {
        final val = _$_InfraestructuraCalidadInmueble(
          infraestructuraCalidadId: $checkedConvert(
              'infraestructura_calidad_id', (v) => v as String?),
          infraestructuraCalidadNombre: $checkedConvert(
              'infraestructura_calidad_nombre', (v) => v as String?),
          infraestructuraCalidadEstado: $checkedConvert(
              'infraestructura_calidad_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'infraestructuraCalidadId': 'infraestructura_calidad_id',
        'infraestructuraCalidadNombre': 'infraestructura_calidad_nombre',
        'infraestructuraCalidadEstado': 'infraestructura_calidad_estado'
      },
    );

Map<String, dynamic> _$$_InfraestructuraCalidadInmuebleToJson(
        _$_InfraestructuraCalidadInmueble instance) =>
    <String, dynamic>{
      'infraestructura_calidad_id': instance.infraestructuraCalidadId,
      'infraestructura_calidad_nombre': instance.infraestructuraCalidadNombre,
      'infraestructura_calidad_estado': instance.infraestructuraCalidadEstado,
    };
