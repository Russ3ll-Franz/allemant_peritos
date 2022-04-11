part of 'inspeccion_cubit.dart';

@freezed
class InspeccionState with _$InspeccionState {
  const factory InspeccionState.initial() = InspeccionInitial;
  const factory InspeccionState.inspeccionLoading() = InspeccionLoading;

  const factory InspeccionState.inspeccionLoaded(
          {@Default(<Inspeccion>[]) List<Inspeccion> tipoInspeccions}) =
      InspeccionLoaded;

  const factory InspeccionState.error(String message) = InspeccionErrorState;
}
