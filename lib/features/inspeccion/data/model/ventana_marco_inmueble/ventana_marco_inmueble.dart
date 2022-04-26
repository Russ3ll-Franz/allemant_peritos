import 'package:freezed_annotation/freezed_annotation.dart';

part 'ventana_marco_inmueble.freezed.dart';
part 'ventana_marco_inmueble.g.dart';

@freezed
class VentanaMarcoInmueble with _$VentanaMarcoInmueble {
  factory VentanaMarcoInmueble({
    @JsonKey(name: 'ventana_marco_id') String? ventanaMarcoId,
    @JsonKey(name: 'ventana_marco_nombre') String? ventanaMarcoNombre,
    @JsonKey(name: 'ventana_marco_estado') String? ventanaMarcoEstado,
  }) = _VentanaMarcoInmueble;

  factory VentanaMarcoInmueble.fromJson(Map<String, dynamic> json) =>
      _$VentanaMarcoInmuebleFromJson(json);
}
