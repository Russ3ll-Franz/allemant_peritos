import 'package:allemant_peritos/features/inspeccion/data/model/puerta_sistema_inmueble/puerta_sistema_inmueble.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'puerta_sistema_inmueble_list.freezed.dart';
part 'puerta_sistema_inmueble_list.g.dart';

@freezed
abstract class PuertaSistemaInmuebleList with _$PuertaSistemaInmuebleList {
  const factory PuertaSistemaInmuebleList({
    required List<PuertaSistemaInmueble> puertaSistemaInmuebleList,
  }) = _PuertaSistemaInmuebleList;
  factory PuertaSistemaInmuebleList.fromJson(Map<String, dynamic> json) =>
      _$PuertaSistemaInmuebleListFromJson(json);
}
