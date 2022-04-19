// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'instalacion_electrica_inmueble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstalacionElectricaInmueble _$$_InstalacionElectricaInmuebleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_InstalacionElectricaInmueble',
      json,
      ($checkedConvert) {
        final val = _$_InstalacionElectricaInmueble(
          instalacionElectricaId:
              $checkedConvert('instalacion_electrica_id', (v) => v as String?),
          instalacionElectricaNombre: $checkedConvert(
              'instalacion_electrica_nombre', (v) => v as String?),
          instalacionElectricaEstado: $checkedConvert(
              'instalacion_electrica_estado', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'instalacionElectricaId': 'instalacion_electrica_id',
        'instalacionElectricaNombre': 'instalacion_electrica_nombre',
        'instalacionElectricaEstado': 'instalacion_electrica_estado'
      },
    );

Map<String, dynamic> _$$_InstalacionElectricaInmuebleToJson(
        _$_InstalacionElectricaInmueble instance) =>
    <String, dynamic>{
      'instalacion_electrica_id': instance.instalacionElectricaId,
      'instalacion_electrica_nombre': instance.instalacionElectricaNombre,
      'instalacion_electrica_estado': instance.instalacionElectricaEstado,
    };
