// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'visita_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitaResponse _$$_VisitaResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_VisitaResponse',
      json,
      ($checkedConvert) {
        final val = _$_VisitaResponse(
          success: $checkedConvert('success', (v) => v as bool?),
          message: $checkedConvert('message', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_VisitaResponseToJson(_$_VisitaResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'id': instance.id,
    };
