part of 'inspeccion_bloc.dart';

@freezed
class InspeccionState with _$InspeccionState {
  const factory InspeccionState.empty() = _Empty;

  const factory InspeccionState.inspeccionLoaded([@Default(<Inspeccion>[]) List<Inspeccion> tipoInspeccions]) = Loaded;
/*   const factory InspeccionState.error(HttpException error) = Error;
 */
}
