import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_state.dart';
part 'dropdown_cubit.freezed.dart';

class DropdownCubit extends Cubit<DropdownState> {
  DropdownCubit({required this.inspeccionRepository})
      : super(const DropdownState.initial());

  IInspeccionRepository inspeccionRepository;
  Future<void> usoInmueble(String name) async {
    final either = await inspeccionRepository.getUsoInmueble(name);

    final response = either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    emit(DropdownState.dropDownUsoInmueble(usoInmueble: response));
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
