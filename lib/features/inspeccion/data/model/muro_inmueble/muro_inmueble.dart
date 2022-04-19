import 'package:freezed_annotation/freezed_annotation.dart';

part 'muro_inmueble.freezed.dart';
part 'muro_inmueble.g.dart';

List<MuroInmueble> muroInmuebleFromJson(List<dynamic> data) =>
    List<MuroInmueble>.from(data.map((x) => MuroInmueble.fromJson(x)));

@freezed
class MuroInmueble with _$MuroInmueble {
  factory MuroInmueble({
    @JsonKey(name: 'muro_id') String? muroId,
    @JsonKey(name: 'muro_nombre') String? muroNombre,
    @JsonKey(name: 'muro_estado') String? muroEstado,
  }) = _MuroInmueble;

  factory MuroInmueble.fromJson(Map<String, dynamic> json) =>
      _$MuroInmuebleFromJson(json);
}
