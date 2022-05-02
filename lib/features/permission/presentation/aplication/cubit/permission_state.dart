part of 'permission_cubit.dart';

@freezed
class PermissionState with _$PermissionState {
  const factory PermissionState.initial() = _Initial;
  const factory PermissionState.waitingForPermission() = WaitingForPermission;
  const factory PermissionState.allPermissionsGranted() = AllPermissionsGranted;
  const factory PermissionState.permissionDenied() = PermissionDenied;
  const factory PermissionState.permissionPermanentlyDenied() =
      PermissionPermanentlyDenied;
  const factory PermissionState.permissionRestricted() = PermissionRestricted;
  const factory PermissionState.permissionNeeded() = PermissionNeeded;
}
