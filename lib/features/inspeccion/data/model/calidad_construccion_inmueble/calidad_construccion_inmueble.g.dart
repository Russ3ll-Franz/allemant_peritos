// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'calidad_construccion_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalidadConstruccionInmueble _$$_CalidadConstruccionInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CalidadConstruccionInmueble',
      json,
      ($checkedConvert) {
        final val = _$_CalidadConstruccionInmueble(
          calidadConstruccionId:
              $checkedConvert('calidad_construccion_id', (v) => v as String?),
          calidadConstruccionNombre: $checkedConvert(
              'calidad_construccion_nombre', (v) => v as String?),
          calidadConstruccionEstado: $checkedConvert(
              'calidad_construccion_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'calidadConstruccionId': 'calidad_construccion_id',
        'calidadConstruccionNombre': 'calidad_construccion_nombre',
        'calidadConstruccionEstado': 'calidad_construccion_estado'
      },
    );

Map<String, dynamic> _$$_CalidadConstruccionInmuebleToJson(
        _$_CalidadConstruccionInmueble instance) =>
    <String, dynamic>{
      'calidad_construccion_id': instance.calidadConstruccionId,
      'calidad_construccion_nombre': instance.calidadConstruccionNombre,
      'calidad_construccion_estado': instance.calidadConstruccionEstado,
    };
