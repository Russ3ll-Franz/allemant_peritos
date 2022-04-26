// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'infraestructura_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfraestructuraInmueble _$$_InfraestructuraInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_InfraestructuraInmueble',
      json,
      ($checkedConvert) {
        final val = _$_InfraestructuraInmueble(
          infraestructuraDisponibleId: $checkedConvert(
              'infraestructura_disponible_id', (v) => v as String?),
          infraestructuraDisponibleNombre: $checkedConvert(
              'infraestructura_disponible_nombre', (v) => v as String?),
          infraestructuraDisponibleEstado: $checkedConvert(
              'infraestructura_disponible_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'infraestructuraDisponibleId': 'infraestructura_disponible_id',
        'infraestructuraDisponibleNombre': 'infraestructura_disponible_nombre',
        'infraestructuraDisponibleEstado': 'infraestructura_disponible_estado'
      },
    );

Map<String, dynamic> _$$_InfraestructuraInmuebleToJson(
        _$_InfraestructuraInmueble instance) =>
    <String, dynamic>{
      'infraestructura_disponible_id': instance.infraestructuraDisponibleId,
      'infraestructura_disponible_nombre':
          instance.infraestructuraDisponibleNombre,
      'infraestructura_disponible_estado':
          instance.infraestructuraDisponibleEstado,
    };
