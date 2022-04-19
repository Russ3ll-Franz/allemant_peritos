import 'package:freezed_annotation/freezed_annotation.dart';

part 'techo_inmueble.freezed.dart';
part 'techo_inmueble.g.dart';

@freezed
class TechoInmueble with _$TechoInmueble {
  factory TechoInmueble({
    @JsonKey(name: 'techo_id') String? techoId,
    @JsonKey(name: 'techo_nombre') String? techoNombre,
    @JsonKey(name: 'techo_estado') String? techoEstado,
  }) = _TechoInmueble;

  factory TechoInmueble.fromJson(Map<String, dynamic> json) =>
      _$TechoInmuebleFromJson(json);
}
