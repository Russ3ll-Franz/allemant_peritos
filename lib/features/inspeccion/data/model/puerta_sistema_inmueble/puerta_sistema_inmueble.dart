import 'package:freezed_annotation/freezed_annotation.dart';

part 'puerta_sistema_inmueble.freezed.dart';
part 'puerta_sistema_inmueble.g.dart';

@freezed
class PuertaSistemaInmueble with _$PuertaSistemaInmueble {
  factory PuertaSistemaInmueble(
      {@JsonKey(name: 'puerta_sistema_id')
          String? puertaSistemaId,
      @JsonKey(name: 'puerta_sistema_nombre')
          String? puertaSistemaNombre,
      @JsonKey(name: 'puerta_sistema_estado')
          String? puertaSistemaEstado}) = _PuertaSistemaInmueble;

  factory PuertaSistemaInmueble.fromJson(Map<String, dynamic> json) =>
      _$PuertaSistemaInmuebleFromJson(json);
}
