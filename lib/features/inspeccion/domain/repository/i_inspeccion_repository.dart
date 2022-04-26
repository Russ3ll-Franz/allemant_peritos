import 'package:allemant_peritos/core/error/failures.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/calidad_construccion_inmueble/calidad_construccion_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_calidad_inmueble/infraestructura_calidad_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_estado_conservacion/infraestructura_estado_conservacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/infraestructura_inmueble/infraestructura_inmueble.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
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
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/visita/visita_response/visita_response.dart';
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

  Future<Either<Failure, List<CalidadConstruccionInmueble>>>
      getCalidadConstruccionInmueble(String name);

  Future<Either<Failure, List<PuertaTipoInmueble>>> getPuertaTipoInmueble(
      String name);
  Future<Either<Failure, List<PuertaSistemaInmueble>>> getPuertaSistemaInmueble(
      String name);
  Future<Either<Failure, List<PuertaMaterialInmueble>>>
      getPuertaMaterialInmueble(String name);
  Future<Either<Failure, List<VentanaSistemaInmueble>>>
      getVentanaSistemaInmueble(String name);
  Future<Either<Failure, List<VentanaVidrioInmueble>>> getVentanaVidrioInmueble(
      String name);
  Future<Either<Failure, List<VentanaMarcoInmueble>>> getVentanaMarcoInmueble(
      String name);
  Future<Either<Failure, List<PisoInmueble>>> getPisoInmueble(String name);
  Future<Either<Failure, List<RevestimientoInmueble>>> getRevestimientoInmueble(
      String name);
  Future<Either<Failure, List<InfraestructuraInmueble>>>
      getInfraestructuraInmueble(String name);
  Future<Either<Failure, List<InfraestructuraCalidadInmueble>>>
      getInfraestructuraCalidadInmueble(String name);
  Future<Either<Failure, List<InfraestructuraEstadoConservacion>>>
      getInfraestructuraEstadoCInmueble(String name);
}
