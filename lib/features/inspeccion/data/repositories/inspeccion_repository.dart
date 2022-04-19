import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/datasources/inspeccion_remote_datasource.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_sanitaria_inmueble/instalacion_sanitaria_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_electrica_inmueble/instalacion_electrica_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/muro_inmueble/muro_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ocupado_inmueble/ocupado_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_sistema_inmueble/puerta_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/techo_inmueble/techo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visitaResponse.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
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
}
