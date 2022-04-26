import 'package:allemant_peritos/features/inspeccion/domain/repository/i_userlocation_repository.dart';
import 'package:geolocator/geolocator.dart';

class UserLocationImpl implements IUserLocationsRepository {
  UserLocationImpl();

  @override
  Future<LocationPermission> checkPermission() async {
    return await Geolocator.checkPermission();
  }

  @override
  Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition();
  }

  @override
  Future<bool> isLocationEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<LocationPermission> requestPermission() async {
    return await Geolocator.requestPermission();
  }
}
