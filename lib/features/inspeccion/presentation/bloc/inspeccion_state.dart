part of 'inspeccion_bloc.dart';

@freezed
class InspeccionState with _$InspeccionState {
  const factory InspeccionState.initial() = Initial;
  const factory InspeccionState.loadInProgress() = LoadInProgress;
  const factory InspeccionState.inspeccionLoaded(List<Inspeccion> tipoInspeccions) = Loaded;
  const factory InspeccionState.error(HttpException error) = Error;
}
