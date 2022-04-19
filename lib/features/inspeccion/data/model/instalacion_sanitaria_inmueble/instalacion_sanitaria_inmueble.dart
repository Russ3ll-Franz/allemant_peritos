import 'package:freezed_annotation/freezed_annotation.dart';

part 'instalacion_sanitaria_inmueble.freezed.dart';
part 'instalacion_sanitaria_inmueble.g.dart';

List<InstalacionSanitariaInmueble> instalacionSanitariaInmuebleFromJson(
        List<dynamic> data) =>
    List<InstalacionSanitariaInmueble>.from(
        data.map((x) => InstalacionSanitariaInmueble.fromJson(x)));

@freezed
class InstalacionSanitariaInmueble with _$InstalacionSanitariaInmueble {
  factory InstalacionSanitariaInmueble({
    @JsonKey(name: 'instalacion_sanitaria_id') String? instalacionSanitariaId,
    @JsonKey(name: 'instalacion_sanitaria_nombre')
        String? instalacionSanitariaNombre,
    @JsonKey(name: 'instalacion_sanitaria_estado')
        String? instalacionSanitariaEstado,
  }) = _InstalacionSanitariaInmueble;

  factory InstalacionSanitariaInmueble.fromJson(Map<String, dynamic> json) =>
      _$InstalacionSanitariaInmuebleFromJson(json);
}
