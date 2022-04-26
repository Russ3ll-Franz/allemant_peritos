// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'infraestructura_estado_conservacion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfraestructuraEstadoConservacion
    _$$_InfraestructuraEstadoConservacionFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_InfraestructuraEstadoConservacion',
          json,
          ($checkedConvert) {
            final val = _$_InfraestructuraEstadoConservacion(
              infraestructuraConservacionId: $checkedConvert(
                  'infraestructura_conservacion_id', (v) => v as String?),
              infraestructuraConservacionNombre: $checkedConvert(
                  'infraestructura_conservacion_nombre', (v) => v as String?),
              infraestructuraConservacionEstado: $checkedConvert(
                  'infraestructura_conservacion_estado', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {
            'infraestructuraConservacionId': 'infraestructura_conservacion_id',
            'infraestructuraConservacionNombre':
                'infraestructura_conservacion_nombre',
            'infraestructuraConservacionEstado':
                'infraestructura_conservacion_estado'
          },
        );

Map<String, dynamic> _$$_InfraestructuraEstadoConservacionToJson(
        _$_InfraestructuraEstadoConservacion instance) =>
    <String, dynamic>{
      'infraestructura_conservacion_id': instance.infraestructuraConservacionId,
      'infraestructura_conservacion_nombre':
          instance.infraestructuraConservacionNombre,
      'infraestructura_conservacion_estado':
          instance.infraestructuraConservacionEstado,
    };
