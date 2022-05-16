import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinacion_state.dart';
part 'coordinacion_cubit.freezed.dart';

class CoordinacionCubit extends Cubit<CoordinacionState> {
  CoordinacionCubit({required this.inspeccionRepository})
      : super(const CoordinacionState.initial());

  IInspeccionRepository inspeccionRepository;

/*   Future<void> getInspeccionByCoordinacion(String coordinacionId) async {
    emit(const CoordinacionState.loading());
    await Future.delayed(const Duration(milliseconds: 600), () {});
    final either = await inspeccionRepository.getInspeccionByCoordinacion(
        coordinacionID: coordinacionId);

    final response = either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    emit(CoordinacionState.loaded(inspeccion: response));
  } */

  Future<void> postInspeccionByAll(
      {String? inspeccionTipo,
      String? peritoID,
      String? coordinacionCodigo}) async {
    emit(const CoordinacionState.loading());
    await Future.delayed(const Duration(milliseconds: 600), () {});
    final either = await inspeccionRepository.postInspeccionByAll(
        inspeccionTipo: inspeccionTipo, coordinacionCodigo: coordinacionCodigo);
    final response = either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    emit(CoordinacionState.loaded(response));
  }

  Exception _getFailureAndThrowExpection(Failure l) {
    if (l is ServerFailure) {
      return ServerException();
    } else if (l is CacheFailure) {
      return CacheException();
    } else {
      return UnknownException();
    }
  }
}
