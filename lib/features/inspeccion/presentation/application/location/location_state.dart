part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.init() = LocationInitState;
  const factory LocationState.error(String message) = LocationErrorState;
  const factory LocationState.locationUpdate(Position position) =
      LocationPositionState;
  const factory LocationState.loading() = LocationLoadingState;
}
