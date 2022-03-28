import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:dartz/dartz.dart';

abstract class IInspeccionRepository {
  Future<Either<Failure, List<Inspeccion>>> getInspeccionTypeByUser(
      {required String userID, required String tipoInspeccion});

  Future<Either<Failure, Coordinacion>> getInspeccionByCoordinacion(
      {required String coordinacionID});
}
