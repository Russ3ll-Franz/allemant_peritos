import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_state.dart';
part 'visita_cubit.freezed.dart';

class VisitaCubit extends Cubit<VisitaState> {
  VisitaCubit({required this.inspeccionRepository})
      : super(const VisitaState.initial());

  IInspeccionRepository inspeccionRepository;

  Future<void> saveInspeccion({required Visita visita}) async {
    final either = await inspeccionRepository.insertInspeccion(visita: visita);

    final response = either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
/*     emit(VisitaState.loaded(inspeccion: response));
 */
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
