// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'instalacion_sanitaria_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstalacionSanitariaInmueble _$$_InstalacionSanitariaInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_InstalacionSanitariaInmueble',
      json,
      ($checkedConvert) {
        final val = _$_InstalacionSanitariaInmueble(
          instalacionSanitariaId:
              $checkedConvert('instalacion_sanitaria_id', (v) => v as String?),
          instalacionSanitariaNombre: $checkedConvert(
              'instalacion_sanitaria_nombre', (v) => v as String?),
          instalacionSanitariaEstado: $checkedConvert(
              'instalacion_sanitaria_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'instalacionSanitariaId': 'instalacion_sanitaria_id',
        'instalacionSanitariaNombre': 'instalacion_sanitaria_nombre',
        'instalacionSanitariaEstado': 'instalacion_sanitaria_estado'
      },
    );

Map<String, dynamic> _$$_InstalacionSanitariaInmuebleToJson(
        _$_InstalacionSanitariaInmueble instance) =>
    <String, dynamic>{
      'instalacion_sanitaria_id': instance.instalacionSanitariaId,
      'instalacion_sanitaria_nombre': instance.instalacionSanitariaNombre,
      'instalacion_sanitaria_estado': instance.instalacionSanitariaEstado,
    };
