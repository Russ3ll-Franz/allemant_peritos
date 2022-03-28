import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/datasources/inspeccion_remote_datasource.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
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
}
