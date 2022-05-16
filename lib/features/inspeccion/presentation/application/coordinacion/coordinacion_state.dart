part of 'coordinacion_cubit.dart';

@freezed
class CoordinacionState with _$CoordinacionState {
  const factory CoordinacionState.initial() = CoordinacionInitial;
  const factory CoordinacionState.loading() = CoordinacionLoading;
  const factory CoordinacionState.loaded(List<Coordinacion> inspeccion) =
      CoordinacionLoaded;
  const factory CoordinacionState.error(String message) = CoordinacionError;
}
