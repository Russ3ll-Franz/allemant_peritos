import 'package:freezed_annotation/freezed_annotation.dart';

import 'records_find.dart';

part 'uso_inmueble.freezed.dart';
part 'uso_inmueble.g.dart';

@freezed
class UsoInmueble with _$UsoInmueble {
  factory UsoInmueble({
    @JsonKey(name: 'records_find') List<RecordsFind>? recordsFind,
  }) = _UsoInmueble;

  factory UsoInmueble.fromJson(Map<String, dynamic> json) =>
      _$UsoInmuebleFromJson(json);
}
