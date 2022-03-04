import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:dartz/dartz.dart';

abstract class IInspeccionRepository {
  Future<Either<Failure, List<Inspeccion>>> getTypeInspeccionByUser(int userID, int tipoInspeccion);

  Future<Either<Failure, Inspeccion>> getInspeccionByCoordinacion(int coordinacionID);
}
