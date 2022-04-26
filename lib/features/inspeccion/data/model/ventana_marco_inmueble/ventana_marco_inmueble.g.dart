// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'ventana_marco_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VentanaMarcoInmueble _$$_VentanaMarcoInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_VentanaMarcoInmueble',
      json,
      ($checkedConvert) {
        final val = _$_VentanaMarcoInmueble(
          ventanaMarcoId:
              $checkedConvert('ventana_marco_id', (v) => v as String?),
          ventanaMarcoNombre:
              $checkedConvert('ventana_marco_nombre', (v) => v as String?),
          ventanaMarcoEstado:
              $checkedConvert('ventana_marco_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'ventanaMarcoId': 'ventana_marco_id',
        'ventanaMarcoNombre': 'ventana_marco_nombre',
        'ventanaMarcoEstado': 'ventana_marco_estado'
      },
    );

Map<String, dynamic> _$$_VentanaMarcoInmuebleToJson(
        _$_VentanaMarcoInmueble instance) =>
    <String, dynamic>{
      'ventana_marco_id': instance.ventanaMarcoId,
      'ventana_marco_nombre': instance.ventanaMarcoNombre,
      'ventana_marco_estado': instance.ventanaMarcoEstado,
    };
