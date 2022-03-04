import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/core/http/http_methods.dart';
import 'package:allemant_peritos/features/inspeccion/domain/entities/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:dartz/dartz.dart';

class InspeccionRepository extends IInspeccionRepository {
  @override
  Future<Either<Failure, List<Inspeccion>>> getInspeccionByUserTipo(int userID, int tipoInspeccion) {
    // TODO: implement getInspeccionByUserTipo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Inspeccion>> geyInspeccionDetail(int coordinacionID) {
    // TODO: implement geyInspeccionDetail
    throw UnimplementedError();
  }
}
