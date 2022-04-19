part of 'dropdown_cubit.dart';

@freezed
class DropdownState with _$DropdownState {
  const factory DropdownState.initial() = _Initial;

  const factory DropdownState.loading() = _Loading;

  const factory DropdownState.dropDownUsoInmueble(
          {@Default(<UsoInmueble>[]) List<UsoInmueble> usoInmueble}) =
      DropUsoInmueble;

  const factory DropdownState.dropDownOcupadoInmueble(
          {@Default(<UsoInmueble>[])
              List<UsoInmueble> usoInmueble,
          @Default(<OcupadoInmueble>[])
              List<OcupadoInmueble> ocupadoInmueble,
          @Default(<MuroInmueble>[])
              List<MuroInmueble> muroInmueble,
          @Default(<TechoInmueble>[])
              List<TechoInmueble> techoInmueble,
          @Default(<InstalacionElectricaInmueble>[])
              List<InstalacionElectricaInmueble> iElectricaInmueble,
          @Default(<InstalacionSanitariaInmueble>[])
              List<InstalacionSanitariaInmueble> iSanitariaInmueble,
          @Default(<PuertaSistemaInmueble>[])
              List<PuertaSistemaInmueble> puertaSistemaInmueble}) =
      DropOcupadoInmueble;

  const factory DropdownState.error(String message) = _ErrorState;
}
