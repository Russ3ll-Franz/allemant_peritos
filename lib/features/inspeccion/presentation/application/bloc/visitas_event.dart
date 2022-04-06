part of 'visitas_bloc.dart';

@freezed
class VisitasEvent with _$VisitasEvent {
  const factory VisitasEvent.visitaSubmitted(Visita visita) = VisitaSubmitted;
}
