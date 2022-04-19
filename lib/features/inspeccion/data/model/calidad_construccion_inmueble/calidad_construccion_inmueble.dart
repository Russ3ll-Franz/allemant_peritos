import 'package:freezed_annotation/freezed_annotation.dart';

part 'calidad_construccion_inmueble.freezed.dart';
part 'calidad_construccion_inmueble.g.dart';

List<CalidadConstruccionInmueble> calidadConstruccionInmuebleFromJson(
        List<dynamic> data) =>
    List<CalidadConstruccionInmueble>.from(
        data.map((x) => CalidadConstruccionInmueble.fromJson(x)));

@freezed
class CalidadConstruccionInmueble with _$CalidadConstruccionInmueble {
  factory CalidadConstruccionInmueble({
    @JsonKey(name: 'calidad_construccion_id') String? calidadConstruccionId,
    @JsonKey(name: 'calidad_construccion_nombre')
        String? calidadConstruccionNombre,
    @JsonKey(name: 'calidad_construccion_estado')
        String? calidadConstruccionEstado,
  }) = _CalidadConstruccionInmueble;

  factory CalidadConstruccionInmueble.fromJson(Map<String, dynamic> json) =>
      _$CalidadConstruccionInmuebleFromJson(json);
}
