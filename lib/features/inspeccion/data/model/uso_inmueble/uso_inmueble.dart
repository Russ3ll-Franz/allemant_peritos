import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'uso_inmueble.freezed.dart';
part 'uso_inmueble.g.dart';

List<UsoInmueble> usoInmuebleFromJson(List<dynamic> data) =>
    List<UsoInmueble>.from(data.map((x) => UsoInmueble.fromJson(x)));

@freezed
class UsoInmueble with _$UsoInmueble {
  factory UsoInmueble({
    @JsonKey(name: 'uso_id') String? usoId,
    @JsonKey(name: 'uso_nombre') String? usoNombre,
    @JsonKey(name: 'uso_estado') String? usoEstado,
  }) = _UsoInmueble;

  factory UsoInmueble.fromJson(Map<String, dynamic> json) =>
      _$UsoInmuebleFromJson(json);
}
