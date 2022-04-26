import 'package:freezed_annotation/freezed_annotation.dart';

part 'infraestructura_inmueble.freezed.dart';
part 'infraestructura_inmueble.g.dart';

@freezed
class InfraestructuraInmueble with _$InfraestructuraInmueble {
  factory InfraestructuraInmueble({
    @JsonKey(name: 'infraestructura_disponible_id')
        String? infraestructuraDisponibleId,
    @JsonKey(name: 'infraestructura_disponible_nombre')
        String? infraestructuraDisponibleNombre,
    @JsonKey(name: 'infraestructura_disponible_estado')
        String? infraestructuraDisponibleEstado,
  }) = _InfraestructuraInmueble;

  factory InfraestructuraInmueble.fromJson(Map<String, dynamic> json) =>
      _$InfraestructuraInmuebleFromJson(json);
}
