import 'package:freezed_annotation/freezed_annotation.dart';

part 'revestimiento_inmueble.freezed.dart';
part 'revestimiento_inmueble.g.dart';

List<RevestimientoInmueble> revestimientoInmuebleFromJson(List<dynamic> data) =>
    List<RevestimientoInmueble>.from(
        data.map((x) => RevestimientoInmueble.fromJson(x)));

@freezed
class RevestimientoInmueble with _$RevestimientoInmueble {
  factory RevestimientoInmueble({
    @JsonKey(name: 'revestimiento_id') String? revestimientoId,
    @JsonKey(name: 'revestimiento_nombre') String? revestimientoNombre,
    @JsonKey(name: 'revestimiento_estado') String? revestimientoEstado,
  }) = _RevestimientoInmueble;

  factory RevestimientoInmueble.fromJson(Map<String, dynamic> json) =>
      _$RevestimientoInmuebleFromJson(json);
}
