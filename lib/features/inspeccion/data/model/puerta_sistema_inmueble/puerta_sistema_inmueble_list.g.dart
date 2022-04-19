// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'puerta_sistema_inmueble_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PuertaSistemaInmuebleList _$$_PuertaSistemaInmuebleListFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PuertaSistemaInmuebleList',
      json,
      ($checkedConvert) {
        final val = _$_PuertaSistemaInmuebleList(
          puertaSistemaInmuebleList: $checkedConvert(
              'puerta_sistema_inmueble_list',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      PuertaSistemaInmueble.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'puertaSistemaInmuebleList': 'puerta_sistema_inmueble_list'
      },
    );

Map<String, dynamic> _$$_PuertaSistemaInmuebleListToJson(
        _$_PuertaSistemaInmuebleList instance) =>
    <String, dynamic>{
      'puerta_sistema_inmueble_list': instance.puertaSistemaInmuebleList,
    };
