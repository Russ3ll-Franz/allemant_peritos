import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipo_puerta_inmueble.freezed.dart';
part 'tipo_puerta_inmueble.g.dart';

List<TipoPuertaInmueble> tipoPuertaInmuebleFromJson(List<dynamic> data) =>
    List<TipoPuertaInmueble>.from(
        data.map((x) => TipoPuertaInmueble.fromJson(x)));

@freezed
class TipoPuertaInmueble with _$TipoPuertaInmueble {
  factory TipoPuertaInmueble({
    @JsonKey(name: 'puerta_tipo_id') String? puertaTipoId,
    @JsonKey(name: 'puerta_tipo_nombre') String? puertaTipoNombre,
    @JsonKey(name: 'puerta_tipo_estado') String? puertaTipoEstado,
  }) = _TipoPuertaInmueble;

  factory TipoPuertaInmueble.fromJson(Map<String, dynamic> json) =>
      _$TipoPuertaInmuebleFromJson(json);
}
