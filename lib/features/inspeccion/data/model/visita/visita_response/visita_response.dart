import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_response.freezed.dart';
part 'visita_response.g.dart';

@freezed
class VisitaResponse with _$VisitaResponse {
  factory VisitaResponse({bool? success, String? message, int? id}) =
      _VisitaResponse;

  factory VisitaResponse.fromJson(Map<String, dynamic> json) =>
      _$VisitaResponseFromJson(json);
}
