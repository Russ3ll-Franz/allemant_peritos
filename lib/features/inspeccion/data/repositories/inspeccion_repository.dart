import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/datasources/inspeccion_remote_datasource.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/calidad_construccion_inmueble/calidad_construccion_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_calidad_inmueble/infraestructura_calidad_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_estado_conservacion/infraestructura_estado_conservacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_inmueble/infraestructura_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_sanitaria_inmueble/instalacion_sanitaria_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_electrica_inmueble/instalacion_electrica_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/muro_inmueble/muro_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ocupado_inmueble/ocupado_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/piso_inmueble/piso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_material_inmueble/puerta_material_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_sistema_inmueble/puerta_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_tipo_inmueble/puerta_tipo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/revestimiento_inmueble/revestimiento_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/techo_inmueble/techo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_vidrio_inmueble/ventana_vidrio_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_sistema_inmueble/ventana_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ventana_marco_inmueble/ventana_marco_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita_response/visita_response.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IInspeccionRepository)
class InspeccionRepository implements IInspeccionRepository {
  InspeccionRepository({required this.remoteDataSource});

  /* final IInspeccionRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo; */

  final IInspeccionRemoteDataSource remoteDataSource;
  @override
  Future<Either<Failure, Coordinacion>> getInspeccionByCoordinacion(
      {required String coordinacionID}) async {
    try {
      final model =
          await remoteDataSource.getInspeccionByCoordinacion(coordinacionID);
      return Right(model);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Inspeccion>>> getInspeccionTypeByUser(
      {required String userID, required String tipoInspeccion}) async {
    try {
      final models = await remoteDataSource.getInspeccionTypeByUser(
          userID, tipoInspeccion);
      return Right(models);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, VisitaResponse>> insertInspeccion(
      {required Visita visita}) async {
    try {
      final inserVisita = await remoteDataSource.insertInspeccion(visita);
      return Right(inserVisita);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<UsoInmueble>>> getUsoInmueble(String name) async {
    try {
      final getUso = await remoteDataSource.postUsoInmueble(name);
      return Right(getUso);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<OcupadoInmueble>>> getOcupadoInmueble(
      String name) async {
    try {
      final getOcupado = await remoteDataSource.postOcupadoInmueble(name);
      return Right(getOcupado);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<MuroInmueble>>> getMuroInmueble(
      String name) async {
    try {
      final getMuro = await remoteDataSource.postMuroInmueble(name);
      return Right(getMuro);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<TechoInmueble>>> getTechoInmueble(
      String name) async {
    try {
      final getMuro = await remoteDataSource.postTechoInmueble(name);
      return Right(getMuro);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<InstalacionElectricaInmueble>>>
      getInstalacionElectricaInmueble(String name) async {
    try {
      final getInstalacionElectrica =
          await remoteDataSource.postInstalacionElectricaInmueble(name);
      return Right(getInstalacionElectrica);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<InstalacionSanitariaInmueble>>>
      getInstalacionSanitariaInmueble(String name) async {
    try {
      final getInstalacionSanitaria =
          await remoteDataSource.postInstalacionSanitariaInmueble(name);
      return Right(getInstalacionSanitaria);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<CalidadConstruccionInmueble>>>
      getCalidadConstruccionInmueble(String name) async {
    try {
      final getCalidadConstruccion =
          await remoteDataSource.postCalidadConstruccionInmueble(name);
      return Right(getCalidadConstruccion);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<PuertaSistemaInmueble>>> getPuertaSistemaInmueble(
      String name) async {
    try {
      final getMuro = await remoteDataSource.postPuertaSistemaInmueble(name);
      return Right(getMuro);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<PuertaMaterialInmueble>>>
      getPuertaMaterialInmueble(String name) async {
    try {
      final getPuertaMaterial =
          await remoteDataSource.postPuertaMaterialInmueble(name);
      return Right(getPuertaMaterial);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<PuertaTipoInmueble>>> getPuertaTipoInmueble(
      String name) async {
    try {
      final getPuertaTipo = await remoteDataSource.postPuertaTipoInmueble(name);
      return Right(getPuertaTipo);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<VentanaMarcoInmueble>>> getVentanaMarcoInmueble(
      String name) async {
    try {
      final getVentanaMarco =
          await remoteDataSource.postVentanaMarcoInmueble(name);
      return Right(getVentanaMarco);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<VentanaSistemaInmueble>>>
      getVentanaSistemaInmueble(String name) async {
    try {
      final getVentanaSistema =
          await remoteDataSource.postVentanaSistemanmueble(name);
      return Right(getVentanaSistema);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<VentanaVidrioInmueble>>> getVentanaVidrioInmueble(
      String name) async {
    try {
      final getVentanaVidrio =
          await remoteDataSource.postVentanaVidrioInmueble(name);
      return Right(getVentanaVidrio);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<PisoInmueble>>> getPisoInmueble(
      String name) async {
    try {
      final getPiso = await remoteDataSource.postPisoInmueble(name);
      return Right(getPiso);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<RevestimientoInmueble>>> getRevestimientoInmueble(
      String name) async {
    try {
      final getRevestimiento =
          await remoteDataSource.postRevestimientoInmueble(name);
      return Right(getRevestimiento);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<InfraestructuraInmueble>>>
      getInfraestructuraInmueble(String name) async {
    try {
      final getInfraestructura =
          await remoteDataSource.postInfraestructuraInmueble(name);
      return Right(getInfraestructura);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<InfraestructuraCalidadInmueble>>>
      getInfraestructuraCalidadInmueble(String name) async {
    try {
      final getInfraestructuraCalidad =
          await remoteDataSource.postInfraestructuraCalidadInmueble(name);
      return Right(getInfraestructuraCalidad);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<InfraestructuraEstadoConservacion>>>
      getInfraestructuraEstadoCInmueble(String name) async {
    try {
      final getInfraestructura = await remoteDataSource
          .postInfraestructuraEstadoConservacionInmueble(name);
      return Right(getInfraestructura);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
