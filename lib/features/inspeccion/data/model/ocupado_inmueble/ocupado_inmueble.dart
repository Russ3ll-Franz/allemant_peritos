import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocupado_inmueble.freezed.dart';
part 'ocupado_inmueble.g.dart';

List<OcupadoInmueble> ocupadoInmuebleFromJson(List<dynamic> data) =>
    List<OcupadoInmueble>.from(data.map((x) => OcupadoInmueble.fromJson(x)));

@freezed
class OcupadoInmueble with _$OcupadoInmueble {
  factory OcupadoInmueble({
    @JsonKey(name: 'ocupado_id') String? ocupadoId,
    @JsonKey(name: 'ocupado_nombre') String? ocupadoNombre,
    @JsonKey(name: 'ocupado_estado') String? ocupadoEstado,
  }) = _OcupadoInmueble;

  factory OcupadoInmueble.fromJson(Map<String, dynamic> json) =>
      _$OcupadoInmuebleFromJson(json);
}
