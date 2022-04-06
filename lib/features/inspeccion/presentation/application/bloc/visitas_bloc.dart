import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visitaResponse.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visitas_event.dart';
part 'visitas_state.dart';
part 'visitas_bloc.freezed.dart';

class VisitasBloc extends Bloc<VisitasEvent, VisitasState> {
  VisitasBloc({required this.inspeccionRepository}) : super(const Initital()) {
    on<VisitaSubmitted>(_onSubmitted);
  }
  IInspeccionRepository inspeccionRepository;

  void _onSubmitted(
    VisitaSubmitted event,
    Emitter<VisitasState> emit,
  ) async {
    final either =
        await inspeccionRepository.insertInspeccion(visita: event.visita);

    final response = either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    emit(VisitasState.success(visitaResponse: response));
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
