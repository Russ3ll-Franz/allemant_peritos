import 'package:freezed_annotation/freezed_annotation.dart';

part 'ventana_sistema_inmueble.freezed.dart';
part 'ventana_sistema_inmueble.g.dart';

@freezed
class VentanaSistemaInmueble with _$VentanaSistemaInmueble {
  factory VentanaSistemaInmueble({
    @JsonKey(name: 'ventana_sistema_id') String? ventanaSistemaId,
    @JsonKey(name: 'ventana_sistema_nombre') String? ventanaSistemaNombre,
    @JsonKey(name: 'ventana_sistema_estado') String? ventanaSistemaEstado,
  }) = _VentanaSistemaInmueble;

  factory VentanaSistemaInmueble.fromJson(Map<String, dynamic> json) =>
      _$VentanaSistemaInmuebleFromJson(json);
}
