import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/calidad_construccion_inmueble/calidad_construccion_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_calidad_inmueble/infraestructura_calidad_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_estado_conservacion/infraestructura_estado_conservacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_inmueble/infraestructura_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_electrica_inmueble/instalacion_electrica_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_sanitaria_inmueble/instalacion_sanitaria_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/muro_inmueble/muro_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ocupado_inmueble/ocupado_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/piso_inmueble/piso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_material_inmueble/puerta_material_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_sistema_inmueble/puerta_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_tipo_inmueble/puerta_tipo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/revestimiento_inmueble/revestimiento_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/techo_inmueble/techo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_marco_inmueble/ventana_marco_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_sistema_inmueble/ventana_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_vidrio_inmueble/ventana_vidrio_inmueble.dart';
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
    final eithercConstruccion =
        await inspeccionRepository.getCalidadConstruccionInmueble(name);
    final eitherPuertaTipo =
        await inspeccionRepository.getPuertaTipoInmueble(name);
    final eitherPuertaSistema =
        await inspeccionRepository.getPuertaSistemaInmueble(name);
    final eitherPuertaMaterial =
        await inspeccionRepository.getPuertaMaterialInmueble(name);
    final eitherVentanaMarco =
        await inspeccionRepository.getVentanaMarcoInmueble(name);
    final eitherVentanaVidrio =
        await inspeccionRepository.getVentanaVidrioInmueble(name);
    final eitherVentanaSistema =
        await inspeccionRepository.getVentanaSistemaInmueble(name);
    final eitherPiso = await inspeccionRepository.getPisoInmueble(name);
    final eitherRevestimiento =
        await inspeccionRepository.getRevestimientoInmueble(name);
    final eitherInfraestructura =
        await inspeccionRepository.getInfraestructuraInmueble(name);
    final eitherInfraestructuraCalidad =
        await inspeccionRepository.getInfraestructuraCalidadInmueble(name);
    final eitherInfraestructuraEstadoC =
        await inspeccionRepository.getInfraestructuraEstadoCInmueble(name);

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
    final responsecConstruccion = eithercConstruccion.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responsePuertaSistema = eitherPuertaSistema.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responsePuertaTipo = eitherPuertaTipo.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responsePuertaMaterial = eitherPuertaMaterial.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseVentanaMarco = eitherVentanaMarco.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseVentanaVidrio = eitherVentanaVidrio.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseVentanaSistema = eitherVentanaSistema.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responsePiso = eitherPiso.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseRevestimiento = eitherRevestimiento.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseInfraestructura = eitherInfraestructura.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseInfraestructuraCalidad = eitherInfraestructuraCalidad.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
    final responseInfraestructuraEstado = eitherInfraestructuraEstadoC.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );

    emit(DropdownState.dropDownOcupadoInmueble(
      ocupadoInmueble: responseOcupado,
      usoInmueble: responseUso,
      muroInmueble: responseMuro,
      techoInmueble: responseTecho,
      puertaSistemaInmueble: responsePuertaSistema,
      puertaTipoInmueble: responsePuertaTipo,
      iElectricaInmueble: responseIElectrica,
      cConstruccionInmueble: responsecConstruccion,
      iSanitariaInmueble: responseISanitaria,
      puertaMaterialInmueble: responsePuertaMaterial,
      ventanaMarcoInmueble: responseVentanaMarco,
      ventanaVidrioInmueble: responseVentanaVidrio,
      ventanaSistemaInmueble: responseVentanaSistema,
      pisoInmueble: responsePiso,
      revestimientoInmueble: responseRevestimiento,
      infraestructuraInmueble: responseInfraestructura,
      infraestructuraCalidadInmueble: responseInfraestructuraCalidad,
      infraestructuraEstadoCInmueble: responseInfraestructuraEstado,
    ));
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
