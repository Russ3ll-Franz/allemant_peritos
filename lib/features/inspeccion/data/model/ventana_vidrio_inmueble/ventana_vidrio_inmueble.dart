import 'package:freezed_annotation/freezed_annotation.dart';

part 'ventana_vidrio_inmueble.freezed.dart';
part 'ventana_vidrio_inmueble.g.dart';

@freezed
class VentanaVidrioInmueble with _$VentanaVidrioInmueble {
  factory VentanaVidrioInmueble({
    @JsonKey(name: 'ventana_vidrio_id') String? ventanaVidrioId,
    @JsonKey(name: 'ventana_vidrio_nombre') String? ventanaVidrioNombre,
    @JsonKey(name: 'ventana_vidrio_estado') String? ventanaVidrioEstado,
  }) = _VentanaVidrioInmueble;

  factory VentanaVidrioInmueble.fromJson(Map<String, dynamic> json) =>
      _$VentanaVidrioInmuebleFromJson(json);
}
