import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:dartz/dartz.dart';

class InspeccionRepository extends IInspeccionRepository {
  @override
  Future<Either<Failure, Inspeccion>> getInspeccionByCoordinacion(int coordinacionID) {
    // TODO: implement getInspeccionByCoordinacion
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Inspeccion>>> getTypeInspeccionByUser(int userID, int tipoInspeccion) {
    // TODO: implement getTypeInspeccionByUser
    throw UnimplementedError();
  }

}
