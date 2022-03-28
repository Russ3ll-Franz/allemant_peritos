import 'dart:convert';

import 'package:allemant_peritos/core/http/api_response.dart';
import 'package:allemant_peritos/core/http/http_methods.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/coordinacion/coordinacion.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:injectable/injectable.dart';

abstract class IInspeccionRemoteDataSource {
  Future<List<Inspeccion>> getInspeccionTypeByUser(
      String userID, String tipoInspeccion);
  Future<Coordinacion> getInspeccionByCoordinacion(String coordinacionID);
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
        final inspeccion = Coordinacion.fromJson(data);

        return inspeccion;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }
}
