import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/inspeccion/inspeccion.dart';

part 'inspeccion_state.dart';
part 'inspeccion_cubit.freezed.dart';

class InspeccionCubit extends Cubit<InspeccionState> {
  InspeccionCubit({required this.inspeccionRepository})
      : super(const InspeccionState.initial());

  IInspeccionRepository inspeccionRepository;

  Future<void> getTypeInspeccionByUser(String tipoInspeccion) async {
    emit(const InspeccionState.inspeccionLoading());

    await Future.delayed(const Duration(milliseconds: 600), () {});

    const storage = FlutterSecureStorage();
    String userID = await storage.read(key: 'id') ?? '';
    final either = await inspeccionRepository.getInspeccionTypeByUser(
        userID: userID, tipoInspeccion: tipoInspeccion);

    final response = either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    emit(InspeccionState.inspeccionLoaded(tipoInspeccions: response));
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
