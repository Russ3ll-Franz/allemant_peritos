import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_electrica_inmueble/instalacion_electrica_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/instalacion_sanitaria_inmueble/instalacion_sanitaria_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/muro_inmueble/muro_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/ocupado_inmueble/ocupado_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/puerta_sistema_inmueble/puerta_sistema_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/techo_inmueble/techo_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/uso_inmueble/uso_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visitaResponse.dart';
import 'package:dartz/dartz.dart';

abstract class IInspeccionRepository {
  Future<Either<Failure, List<Inspeccion>>> getInspeccionTypeByUser(
      {required String userID, required String tipoInspeccion});

  Future<Either<Failure, Coordinacion>> getInspeccionByCoordinacion(
      {required String coordinacionID});
  Future<Either<Failure, VisitaResponse>> insertInspeccion(
      {required Visita visita});
  Future<Either<Failure, List<UsoInmueble>>> getUsoInmueble(String name);
  Future<Either<Failure, List<OcupadoInmueble>>> getOcupadoInmueble(
      String name);
  Future<Either<Failure, List<MuroInmueble>>> getMuroInmueble(String name);
  Future<Either<Failure, List<TechoInmueble>>> getTechoInmueble(String name);
  Future<Either<Failure, List<InstalacionElectricaInmueble>>>
      getInstalacionElectricaInmueble(String name);
  Future<Either<Failure, List<InstalacionSanitariaInmueble>>>
      getInstalacionSanitariaInmueble(String name);
  Future<Either<Failure, List<PuertaSistemaInmueble>>> getPuertaSistemaInmueble(
      String name);
}
