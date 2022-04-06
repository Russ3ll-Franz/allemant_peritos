part of 'visita_cubit.dart';

@freezed
class VisitaState with _$VisitaState {
  const factory VisitaState.initial() = _Initial;
  const factory VisitaState.data(Visita visita) = Data;
}
