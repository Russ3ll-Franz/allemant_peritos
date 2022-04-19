import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_electrica_inmueble/instalacion_electrica_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_sanitaria_inmueble/instalacion_sanitaria_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/muro_inmueble/muro_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ocupado_inmueble/ocupado_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_sistema_inmueble/puerta_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/techo_inmueble/techo_inmueble.dart';
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

  /*  Future<void> usoInmueble2(String name) async {
    final either = await inspeccionRepository.getUsoInmueble(name);

    final response = either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    emit(DropdownState.dropDownOcupadoInmueble(usoInmueble: response));
  }
 */
  Future<void> ocupadoInmueble(String name) async {
    final eitherOcupado = await inspeccionRepository.getOcupadoInmueble(name);
    final eitherUso = await inspeccionRepository.getUsoInmueble(name);
    final eitherMuro = await inspeccionRepository.getMuroInmueble(name);
    final eitherTecho = await inspeccionRepository.getTechoInmueble(name);
    final eitheriElectrica =
        await inspeccionRepository.getInstalacionElectricaInmueble(name);
    final eitheriSanitaria =
        await inspeccionRepository.getInstalacionSanitariaInmueble(name);
    final eitherPuertaSistema =
        await inspeccionRepository.getPuertaSistemaInmueble(name);

    final responseOcupado = eitherOcupado.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseUso = eitherUso.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseMuro = eitherMuro.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseTecho = eitherTecho.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseIElectrica = eitheriElectrica.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseISanitaria = eitheriSanitaria.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responsePuertaSistema = eitherPuertaSistema.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );

    emit(DropdownState.dropDownOcupadoInmueble(
        ocupadoInmueble: responseOcupado,
        usoInmueble: responseUso,
        muroInmueble: responseMuro,
        techoInmueble: responseTecho,
        puertaSistemaInmueble: responsePuertaSistema,
        iElectricaInmueble: responseIElectrica,
        iSanitariaInmueble: responseISanitaria));
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
