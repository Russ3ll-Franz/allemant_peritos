import 'package:freezed_annotation/freezed_annotation.dart';

part 'puerta_tipo_inmueble.freezed.dart';
part 'puerta_tipo_inmueble.g.dart';

@freezed
class PuertaTipoInmueble with _$PuertaTipoInmueble {
  factory PuertaTipoInmueble({
    @JsonKey(name: 'puerta_tipo_id') String? puertaTipoId,
    @JsonKey(name: 'puerta_tipo_nombre') String? puertaTipoNombre,
    @JsonKey(name: 'puerta_tipo_estado') String? puertaTipoEstado,
  }) = _PuertaTipoInmueble;

  factory PuertaTipoInmueble.fromJson(Map<String, dynamic> json) =>
      _$PuertaTipoInmuebleFromJson(json);
}
