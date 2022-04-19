import 'package:freezed_annotation/freezed_annotation.dart';

part 'instalacion_electrica_inmueble.freezed.dart';
part 'instalacion_electrica_inmueble.g.dart';

List<InstalacionElectricaInmueble> instalacionElectricaInmuebleFromJson(
        List<dynamic> data) =>
    List<InstalacionElectricaInmueble>.from(
        data.map((x) => InstalacionElectricaInmueble.fromJson(x)));

@freezed
class InstalacionElectricaInmueble with _$InstalacionElectricaInmueble {
  factory InstalacionElectricaInmueble({
    @JsonKey(name: 'instalacion_electrica_id') String? instalacionElectricaId,
    @JsonKey(name: 'instalacion_electrica_nombre')
        String? instalacionElectricaNombre,
    @JsonKey(name: 'instalacion_electrica_estado')
        String? instalacionElectricaEstado,
  }) = _InstalacionElectricaInmueble;

  factory InstalacionElectricaInmueble.fromJson(Map<String, dynamic> json) =>
      _$InstalacionElectricaInmuebleFromJson(json);
}
