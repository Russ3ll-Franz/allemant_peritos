import 'package:freezed_annotation/freezed_annotation.dart';

part 'puerta_material_inmueble.freezed.dart';
part 'puerta_material_inmueble.g.dart';

List<PuertaMaterialInmueble> puertaMaterialInmuebleFromJson(
        List<dynamic> data) =>
    List<PuertaMaterialInmueble>.from(
        data.map((x) => PuertaMaterialInmueble.fromJson(x)));

@freezed
class PuertaMaterialInmueble with _$PuertaMaterialInmueble {
  factory PuertaMaterialInmueble({
    @JsonKey(name: 'puerta_material_id') String? puertaMaterialId,
    @JsonKey(name: 'puerta_material_nombre') String? puertaMaterialNombre,
    @JsonKey(name: 'puerta_material_estado') String? puertaMaterialEstado,
  }) = _PuertaMaterialInmueble;

  factory PuertaMaterialInmueble.fromJson(Map<String, dynamic> json) =>
      _$PuertaMaterialInmuebleFromJson(json);
}
