import 'package:freezed_annotation/freezed_annotation.dart';

import 'records_find.dart';

part 'coordinacion.freezed.dart';
part 'coordinacion.g.dart';

@freezed
class Coordinacion with _$Coordinacion {
  factory Coordinacion({
    @JsonKey(name: 'records_find') required List<RecordsFind> recordsFind,
  }) = _Coordinacion;

  factory Coordinacion.fromJson(Map<String, dynamic> json) =>
      _$CoordinacionFromJson(json);
}
