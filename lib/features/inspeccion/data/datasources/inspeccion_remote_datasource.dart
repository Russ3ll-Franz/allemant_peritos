import 'package:allemant_peritos/core/http/api_response.dart';
import 'package:allemant_peritos/core/http/http_methods.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:injectable/injectable.dart';

abstract class IInspeccionRemoteDataSource {
  Future<List<Inspeccion>> getInspeccion(int userID, int tipoInspeccion);
  Future<Inspeccion> getTypeInspeccionByUser(int coordinacionID);
}

@LazySingleton(as: IInspeccionRemoteDataSource)
class InspeccionRemoteDataSource implements IInspeccionRemoteDataSource {
  InspeccionRemoteDataSource(this._helper);

  final HttpMethodsType _helper;

  @override
  Future<List<Inspeccion>> getInspeccion(int userID, int tipoInspeccion) async {
    final response = await _helper.get("operaciones/inspecciones/listAppInspeccion/$userID/$tipoInspeccion");

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
  Future<Inspeccion> getTypeInspeccionByUser(int coordinacionID) async {
    final response = await _helper.get("operaciones/inspecciones/listAppInspeccionCoordinacionId/$coordinacionID");
    if (response is APISuccess) {
      final value = response.value;
      try {
        final _inspeccions = Inspeccion.fromJson(value);

        return _inspeccions;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      throw Exception();
    }
  }
}
