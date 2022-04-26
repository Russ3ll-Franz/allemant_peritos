import 'package:freezed_annotation/freezed_annotation.dart';

part 'infraestructura_estado_conservacion.freezed.dart';
part 'infraestructura_estado_conservacion.g.dart';

@freezed
class InfraestructuraEstadoConservacion
    with _$InfraestructuraEstadoConservacion {
  factory InfraestructuraEstadoConservacion({
    @JsonKey(name: 'infraestructura_conservacion_id')
        String? infraestructuraConservacionId,
    @JsonKey(name: 'infraestructura_conservacion_nombre')
        String? infraestructuraConservacionNombre,
    @JsonKey(name: 'infraestructura_conservacion_estado')
        String? infraestructuraConservacionEstado,
  }) = _InfraestructuraEstadoConservacion;

  factory InfraestructuraEstadoConservacion.fromJson(
          Map<String, dynamic> json) =>
      _$InfraestructuraEstadoConservacionFromJson(json);
}
