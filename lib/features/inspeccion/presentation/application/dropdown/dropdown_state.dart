part of 'dropdown_cubit.dart';

@freezed
class DropdownState with _$DropdownState {
  const factory DropdownState.initial() = _Initial;

  const factory DropdownState.loading() = DropDownLoading;

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
      @Default(<CalidadConstruccionInmueble>[])
          List<CalidadConstruccionInmueble> cConstruccionInmueble,
      @Default(<PuertaTipoInmueble>[])
          List<PuertaTipoInmueble> puertaTipoInmueble,
      @Default(<PuertaSistemaInmueble>[])
          List<PuertaSistemaInmueble> puertaSistemaInmueble,
      @Default(<PuertaMaterialInmueble>[])
          List<PuertaMaterialInmueble> puertaMaterialInmueble,
      @Default(<VentanaMarcoInmueble>[])
          List<VentanaMarcoInmueble> ventanaMarcoInmueble,
      @Default(<VentanaVidrioInmueble>[])
          List<VentanaVidrioInmueble> ventanaVidrioInmueble,
      @Default(<VentanaSistemaInmueble>[])
          List<VentanaSistemaInmueble> ventanaSistemaInmueble,
      @Default(<PisoInmueble>[])
          List<PisoInmueble> pisoInmueble,
      @Default(<RevestimientoInmueble>[])
          List<RevestimientoInmueble> revestimientoInmueble,
      @Default(<InfraestructuraInmueble>[])
          List<InfraestructuraInmueble> infraestructuraInmueble,
      @Default(<InfraestructuraCalidadInmueble>[])
          List<InfraestructuraCalidadInmueble> infraestructuraCalidadInmueble,
      @Default(<InfraestructuraEstadoConservacion>[])
          List<InfraestructuraEstadoConservacion>
              infraestructuraEstadoCInmueble}) = DropOcupadoInmueble;

  const factory DropdownState.error(String message) = DropDownErrorState;
}
