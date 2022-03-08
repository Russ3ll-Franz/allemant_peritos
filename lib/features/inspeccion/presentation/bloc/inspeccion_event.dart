part of 'inspeccion_bloc.dart';

@freezed
class InspeccionEvent with _$InspeccionEvent {
  const factory InspeccionEvent.fetched(Inspeccion listInspeccion) = _Fetchet;
}
