import 'package:freezed_annotation/freezed_annotation.dart';

part 'records_find.freezed.dart';
part 'records_find.g.dart';

@freezed
class RecordsFind with _$RecordsFind {
  factory RecordsFind({
    @JsonKey(name: 'cotizacion_id') required String cotizacionId,
    @JsonKey(name: 'coordinacion_id') required String coordinacionId,
    @JsonKey(name: 'coordinacion_correlativo')
        required String coordinacionCorrelativo,
    @JsonKey(name: 'riesgo_id') required String riesgoId,
    @JsonKey(name: 'riesgo_nombre') required String riesgoNombre,
    @JsonKey(name: 'coor_estado_id') required String coorEstadoId,
    @JsonKey(name: 'coor_estado_nombre') required String coorEstadoNombre,
    @JsonKey(name: 'coordinador_id') required String coordinadorId,
    @JsonKey(name: 'coordinador_nombre') required String coordinadorNombre,
    @JsonKey(name: 'fecha_solicitud') required String fechaSolicitud,
    @JsonKey(name: 'entrega_al_cliente_fecha')
        required String entregaAlClienteFecha,
    @JsonKey(name: 'fecha_entrega') required String fechaEntrega,
    @JsonKey(name: 'solicitante_id') required String solicitanteId,
    @JsonKey(name: 'solicitante_nombre') required String solicitanteNombre,
    @JsonKey(name: 'contacto_id') required String contactoId,
    @JsonKey(name: 'contacto_nombre') required String contactoNombre,
    @JsonKey(name: 'cliente_id') required String clienteId,
    @JsonKey(name: 'cliente_nombre') required String clienteNombre,
    @JsonKey(name: 'servicio_tipo_id') required String servicioTipoId,
    @JsonKey(name: 'servicio_tipo_nombre') required String servicioTipoNombre,
    @JsonKey(name: 'tipo_cambio_id') required String tipoCambioId,
    @JsonKey(name: 'tipo_cambio_nombre') required String tipoCambioNombre,
    @JsonKey(name: 'tipo_inspeccion_id') required String tipoInspeccionId,
    @JsonKey(name: 'tipo_inspeccion_nombre')
        required String tipoInspeccionNombre,
    @JsonKey(name: 'modalidad_id') required String modalidadId,
    @JsonKey(name: 'modalidad_nombre') required String modalidadNombre,
    @JsonKey(name: 'inspeccion_id') required String inspeccionId,
    @JsonKey(name: 'perito_id') required String peritoId,
    @JsonKey(name: 'perito_nombre') required String peritoNombre,
    @JsonKey(name: 'inspeccion_contacto') required String inspeccionContacto,
    @JsonKey(name: 'inspeccion_fecha') required String inspeccionFecha,
    @JsonKey(name: 'inspeccion_fecha_normal')
        required String inspeccionFechaNormal,
    @JsonKey(name: 'inspeccion_hora') required String inspeccionHora,
    @JsonKey(name: 'inspeccion_hora_tipo') required String inspeccionHoraTipo,
    @JsonKey(name: 'distrito_id') required String distritoId,
    @JsonKey(name: 'distrito_nombre') required String distritoNombre,
    @JsonKey(name: 'provincia_id') required String provinciaId,
    @JsonKey(name: 'provincia_nombre') required String provinciaNombre,
    @JsonKey(name: 'departamento_id') required String departamentoId,
    @JsonKey(name: 'departamento_nombre') required String departamentoNombre,
    @JsonKey(name: 'inspeccion_direccion') required String inspeccionDireccion,
    @JsonKey(name: 'inspeccion_latitud') required String inspeccionLatitud,
    @JsonKey(name: 'inspeccion_longitud') required String inspeccionLongitud,
    @JsonKey(name: 'inspeccion_observacion')
        required String inspeccionObservacion,
    @JsonKey(name: 'estado_id') required String estadoId,
    @JsonKey(name: 'estado_nombre') required String estadoNombre,
    @JsonKey(name: 'info_status') required String infoStatus,
    @JsonKey(name: 'digitador_id') required String digitadorId,
    @JsonKey(name: 'digitador_nombre') required String digitadorNombre,
    @JsonKey(name: 'control_calidad_id') required String controlCalidadId,
    @JsonKey(name: 'control_calidad_nombre')
        required String controlCalidadNombre,
    @JsonKey(name: 'visita_id') required String visitaId,
  }) = _RecordsFind;

  factory RecordsFind.fromJson(Map<String, dynamic> json) =>
      _$RecordsFindFromJson(json);
}
