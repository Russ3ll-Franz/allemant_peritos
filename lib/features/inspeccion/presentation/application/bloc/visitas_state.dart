part of 'visitas_bloc.dart';

@freezed
class VisitasState with _$VisitasState {
  const factory VisitasState.initial() = Initital;
  const factory VisitasState.success({VisitaResponse? visitaResponse}) =
      VisitaSuccess;
}
