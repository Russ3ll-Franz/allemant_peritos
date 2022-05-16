import 'package:allemant_peritos/core/http/api_response.dart';
import 'package:allemant_peritos/core/http/http_methods.dart';
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
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class IInspeccionRemoteDataSource {
  Future<List<Inspeccion>> getInspeccionTypeByUser(
      String userID, String tipoInspeccion);
  Future<Coordinacion> getInspeccionByCoordinacion(String coordinacionID);
  Future<List<Coordinacion>> postInspeccionByAll(
      {String inspeccionTipo, String coordinacionCodigo});
  Future<VisitaResponse> insertInspeccion(Visita visita);
  Future<List<UsoInmueble>> postUsoInmueble(String nombre);
  Future<List<OcupadoInmueble>> postOcupadoInmueble(String nombre);
  Future<List<MuroInmueble>> postMuroInmueble(String nombre);
  Future<List<TechoInmueble>> postTechoInmueble(String nombre);
  Future<List<InstalacionElectricaInmueble>> postInstalacionElectricaInmueble(
      String nombre);
  Future<List<InstalacionSanitariaInmueble>> postInstalacionSanitariaInmueble(
      String nombre);
  Future<List<CalidadConstruccionInmueble>> postCalidadConstruccionInmueble(
      String nombre);

  Future<List<PuertaSistemaInmueble>> postPuertaSistemaInmueble(String nombre);
  Future<List<PuertaMaterialInmueble>> postPuertaMaterialInmueble(
      String nombre);
  Future<List<PuertaTipoInmueble>> postPuertaTipoInmueble(String nombre);
  Future<List<VentanaVidrioInmueble>> postVentanaVidrioInmueble(String nombre);
  Future<List<VentanaSistemaInmueble>> postVentanaSistemanmueble(String nombre);
  Future<List<VentanaMarcoInmueble>> postVentanaMarcoInmueble(String nombre);
  Future<List<PisoInmueble>> postPisoInmueble(String nombre);
  Future<List<RevestimientoInmueble>> postRevestimientoInmueble(String nombre);
  Future<List<InfraestructuraInmueble>> postInfraestructuraInmueble(
      String nombre);
  Future<List<InfraestructuraCalidadInmueble>>
      postInfraestructuraCalidadInmueble(String nombre);
  Future<List<InfraestructuraEstadoConservacion>>
      postInfraestructuraEstadoConservacionInmueble(String nombre);
}

@Injectable(as: IInspeccionRemoteDataSource)
class InspeccionRemoteDataSource implements IInspeccionRemoteDataSource {
  InspeccionRemoteDataSource({required this.helper});

  HttpMethodsType helper;

  @override
  Future<List<Inspeccion>> getInspeccionTypeByUser(
      String userID, String tipoInspeccion) async {
    final response = await helper.get(
        "operaciones/inspecciones/listAppInspeccion/$userID/$tipoInspeccion");

    if (response is APISuccess) {
      final value = response.value;
      try {
        final _inspeccions = inspeccionsFromJson(value);

        return _inspeccions;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<Coordinacion> getInspeccionByCoordinacion(
      String coordinacionID) async {
    final response = await helper
        .get("intranet/inspeccion/search?coordinacion_codigo=$coordinacionID");

    if (response is APISuccess) {
      final data = response.value;

      try {
        final inspeccion = Coordinacion.fromJson(response.value[0]);

        return inspeccion;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<Coordinacion>> postInspeccionByAll(
      {String? inspeccionTipo, String? coordinacionCodigo}) async {
    const storage = FlutterSecureStorage();
    String userID = await storage.read(key: 'id') ?? '';
    var params = {
      'inspeccion_tipo': '1,2',
      'perito_codigo': '',
      'coordinacion_codigo': coordinacionCodigo,
    };
    final response = await helper.post(
      "intranet/inspeccion/search",
      params,
    );
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => Coordinacion.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<VisitaResponse> insertInspeccion(Visita visita) async {
    final response = await helper.post("intranet/visita/insert", visita);
    if (response is APISuccess) {
      final data = response.value;
      try {
        final inspeccion = VisitaResponse.fromJson(data);

        return inspeccion;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<UsoInmueble>> postUsoInmueble(String nombre) async {
    final response = await helper.post("intranet/uso/search", nombre);
    if (response is APISuccess) {
      final data = response.value;
      try {
        final inspeccion = usoInmuebleFromJson(data);

        return inspeccion;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<OcupadoInmueble>> postOcupadoInmueble(String nombre) async {
    final response = await helper.post("intranet/ocupado/search", nombre);
    if (response is APISuccess) {
      final data = response.value;
      try {
        final ocupadoInmueble = ocupadoInmuebleFromJson(data);
        return ocupadoInmueble;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<MuroInmueble>> postMuroInmueble(String nombre) async {
    final response = await helper.post("intranet/muro/search", nombre);
    if (response is APISuccess) {
      final data = response.value;
      try {
        final ocupadoInmueble = muroInmuebleFromJson(data);
        return ocupadoInmueble;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<TechoInmueble>> postTechoInmueble(String nombre) async {
    final response = await helper.post("intranet/techo/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => TechoInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<PuertaSistemaInmueble>> postPuertaSistemaInmueble(
      String nombre) async {
    final response = await helper.post("intranet/psistema/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => PuertaSistemaInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<InstalacionElectricaInmueble>> postInstalacionElectricaInmueble(
      String nombre) async {
    final response = await helper.post("intranet/ielectrica/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => InstalacionElectricaInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<InstalacionSanitariaInmueble>> postInstalacionSanitariaInmueble(
      String nombre) async {
    final response = await helper.post("intranet/isanitaria/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => InstalacionSanitariaInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CalidadConstruccionInmueble>> postCalidadConstruccionInmueble(
      String nombre) async {
    final response = await helper.post("intranet/cconstruccion/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => CalidadConstruccionInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<PuertaMaterialInmueble>> postPuertaMaterialInmueble(
      String nombre) async {
    final response = await helper.post("intranet/pmaterial/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => PuertaMaterialInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<PuertaTipoInmueble>> postPuertaTipoInmueble(String nombre) async {
    final response = await helper.post("intranet/ptipo/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => PuertaTipoInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<VentanaMarcoInmueble>> postVentanaMarcoInmueble(
      String nombre) async {
    final response = await helper.post("intranet/vmarco/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => VentanaMarcoInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<VentanaSistemaInmueble>> postVentanaSistemanmueble(
      String nombre) async {
    final response = await helper.post("intranet/vsistema/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => VentanaSistemaInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<VentanaVidrioInmueble>> postVentanaVidrioInmueble(
      String nombre) async {
    final response = await helper.post("intranet/vvidrio/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => VentanaVidrioInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<PisoInmueble>> postPisoInmueble(String nombre) async {
    final response = await helper.post("intranet/pisos/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => PisoInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<RevestimientoInmueble>> postRevestimientoInmueble(
      String nombre) async {
    final response = await helper.post("intranet/revestimiento/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => RevestimientoInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<InfraestructuraInmueble>> postInfraestructuraInmueble(
      String nombre) async {
    final response = await helper.post("intranet/idisponible/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => InfraestructuraInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<InfraestructuraCalidadInmueble>>
      postInfraestructuraCalidadInmueble(String nombre) async {
    final response = await helper.post("intranet/icalidad/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => InfraestructuraCalidadInmueble.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<InfraestructuraEstadoConservacion>>
      postInfraestructuraEstadoConservacionInmueble(String nombre) async {
    final response = await helper.post("intranet/iconservacion/search", nombre);
    if (response is APISuccess) {
      try {
        final mydata = (response.value as List)
            .map((i) => InfraestructuraEstadoConservacion.fromJson(i))
            .toList();
        return mydata;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }
}
