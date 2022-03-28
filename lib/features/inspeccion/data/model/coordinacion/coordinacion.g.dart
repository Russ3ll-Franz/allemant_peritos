// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'coordinacion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coordinacion _$$_CoordinacionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_Coordinacion',
      json,
      ($checkedConvert) {
        final val = _$_Coordinacion(
          recordsFind: $checkedConvert(
              'records_find',
              (v) => (v as List<dynamic>)
                  .map((e) => RecordsFind.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'recordsFind': 'records_find'},
    );

Map<String, dynamic> _$$_CoordinacionToJson(_$_Coordinacion instance) =>
    <String, dynamic>{
      'records_find': instance.recordsFind,
    };
