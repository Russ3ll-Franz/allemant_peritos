import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';

abstract class IInspeccionRemoteDataSource {
  Future<List<Inspeccion>> getCharacters(int page);
  Future<Inspeccion> getTypeInspeccionByUser(int userID, int tipoInspeccion);
}
    // TODO: implement getTypeInspeccionByUser
  