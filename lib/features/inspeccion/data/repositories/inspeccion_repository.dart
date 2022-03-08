import 'package:allemant_peritos/core/error/exceptions.dart';
import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/core/network/network_info.dart';
import 'package:allemant_peritos/features/inspeccion/data/datasources/inspeccion_remote_datasource.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IInspeccionRepository)
class InspeccionRepository extends IInspeccionRepository {
  InspeccionRepository(this._remoteDataSource, this._networkInfo);
  final IInspeccionRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<Failure, Inspeccion>> getInspeccionByCoordinacion(int coordinacionID) async {
    if (await _networkInfo.isConnected) {
      try {
        final models = await _remoteDataSource.getTypeInspeccionByUser(coordinacionID);
        return Right(models);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Inspeccion>>> getTypeInspeccionByUser(int userID, int tipoInspeccion) async {
    if (await _networkInfo.isConnected) {
      try {
        final models = await _remoteDataSource.getInspeccion(userID, tipoInspeccion);
        return Right(models);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
