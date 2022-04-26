import 'package:freezed_annotation/freezed_annotation.dart';

part 'infraestructura_calidad_inmueble.freezed.dart';
part 'infraestructura_calidad_inmueble.g.dart';

@freezed
class InfraestructuraCalidadInmueble with _$InfraestructuraCalidadInmueble {
  factory InfraestructuraCalidadInmueble({
    @JsonKey(name: 'infraestructura_calidad_id')
        String? infraestructuraCalidadId,
    @JsonKey(name: 'infraestructura_calidad_nombre')
        String? infraestructuraCalidadNombre,
    @JsonKey(name: 'infraestructura_calidad_estado')
        String? infraestructuraCalidadEstado,
  }) = _InfraestructuraCalidadInmueble;

  factory InfraestructuraCalidadInmueble.fromJson(Map<String, dynamic> json) =>
      _$InfraestructuraCalidadInmuebleFromJson(json);
}
