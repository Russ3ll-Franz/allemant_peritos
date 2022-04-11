part of 'dropdown_cubit.dart';

@freezed
class DropdownState with _$DropdownState {
  const factory DropdownState.initial() = _Initial;

  const factory DropdownState.loading() = _Loading;

  const factory DropdownState.dropDownUsoInmueble({UsoInmueble? usoInmueble}) =
      DropUsoInmueble;

  const factory DropdownState.error(String message) = _ErrorState;
}
