part of 'inspeccion_detail_cubit.dart';

@freezed
class InspeccionDetailState with _$InspeccionDetailState {
  const factory InspeccionDetailState.inspeccionDetailInitial() =
      InspeccionDetailInitial;
  const factory InspeccionDetailState.inspeccionDetailLoading() =
      InspeccionDetailLoading;

  const factory InspeccionDetailState.inspeccionDetailLoaded(
      {Inspeccion? inspeccion}) = InspeccionDetailLoaded;
  const factory InspeccionDetailState.inspeccionDetailError(String message) =
      InspeccionDetailErrorState;
}
