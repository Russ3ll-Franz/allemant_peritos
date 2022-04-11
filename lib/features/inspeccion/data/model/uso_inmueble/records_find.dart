import 'package:freezed_annotation/freezed_annotation.dart';

part 'records_find.freezed.dart';
part 'records_find.g.dart';

@freezed
class RecordsFind with _$RecordsFind {
  factory RecordsFind({
    @JsonKey(name: 'uso_id') String? usoId,
    @JsonKey(name: 'uso_nombre') String? usoNombre,
    @JsonKey(name: 'uso_estado') String? usoEstado,
  }) = _RecordsFind;

  factory RecordsFind.fromJson(Map<String, dynamic> json) =>
      _$RecordsFindFromJson(json);
}
