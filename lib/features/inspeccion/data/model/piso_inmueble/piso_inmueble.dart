import 'package:freezed_annotation/freezed_annotation.dart';

part 'piso_inmueble.freezed.dart';
part 'piso_inmueble.g.dart';

@freezed
class PisoInmueble with _$PisoInmueble {
  factory PisoInmueble({
    @JsonKey(name: 'pisos_id') String? pisosId,
    @JsonKey(name: 'pisos_nombre') String? pisosNombre,
    @JsonKey(name: 'pisos_estado') String? pisosEstado,
  }) = _PisoInmueble;

  factory PisoInmueble.fromJson(Map<String, dynamic> json) =>
      _$PisoInmuebleFromJson(json);
}
