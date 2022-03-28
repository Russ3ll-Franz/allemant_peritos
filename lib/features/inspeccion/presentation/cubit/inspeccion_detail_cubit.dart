import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspeccion_detail_state.dart';
part 'inspeccion_detail_cubit.freezed.dart';

class InspeccionDetailCubit extends Cubit<InspeccionDetailState> {
  InspeccionDetailCubit({required this.inspeccionRepository})
      : super(const InspeccionDetailState.inspeccionDetailInitial());

  IInspeccionRepository inspeccionRepository;

  Future<void> getInspeccionByCoordinacion(String coordinacionId) async {
    emit(const InspeccionDetailState.inspeccionDetailLoading());
    /*  await Future.delayed(const Duration(milliseconds: 1600), () {});
    final either = await inspeccionRepository.getInspeccionByCoordinacion(
        coordinacionID: coordinacionId);

    final response = either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    emit(InspeccionDetailState.inspeccionDetailLoaded(inspeccion: response)); */
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
