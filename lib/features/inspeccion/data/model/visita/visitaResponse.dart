import 'dart:convert';

VisitaResponse visitaResponseFromJson(String str) =>
    VisitaResponse.fromJson(json.decode(str));

String visitaResponseToJson(VisitaResponse data) => json.encode(data.toJson());

class VisitaResponse {
  VisitaResponse({
    required this.status,
    required this.message,
  });

  final bool status;
  final String message;

  factory VisitaResponse.fromJson(Map<String, dynamic> json) => VisitaResponse(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
