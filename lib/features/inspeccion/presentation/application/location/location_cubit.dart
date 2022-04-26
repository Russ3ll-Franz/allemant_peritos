import 'package:allemant_peritos/features/inspeccion/domain/repository/i_userlocation_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit({required this.iUserLocationsRepository})
      : super(LocationState.init());
  IUserLocationsRepository iUserLocationsRepository;
  void fetchUserCurrentLocation() async {
    try {
      emit(const LocationState.loading());
      // Test if location services are enabled.
      bool serviceEnabled = await iUserLocationsRepository.isLocationEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        throw 'location services disabled! kindly enable them to continue using the app';
      }
      LocationPermission permission =
          await iUserLocationsRepository.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await iUserLocationsRepository.requestPermission();
        if (permission == LocationPermission.denied) {
          throw 'Location permissions are denied';
        }
      }
      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        throw 'Location permissions are permanently denied, we cannot request permissions';
      }
      final location = await iUserLocationsRepository.getCurrentPosition();
      emit(LocationState.locationUpdate(location));
    } catch (e) {
      emit(LocationState.error(e.toString()));
    }
  }
}
