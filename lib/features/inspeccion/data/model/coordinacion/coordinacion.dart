import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinacion.freezed.dart';
part 'coordinacion.g.dart';

@freezed
class Coordinacion with _$Coordinacion {
  factory Coordinacion({
    @JsonKey(name: 'cotizacion_id') String? cotizacionId,
    @JsonKey(name: 'coordinacion_id') String? coordinacionId,
    @JsonKey(name: 'coordinacion_correlativo') String? coordinacionCorrelativo,
    @JsonKey(name: 'riesgo_id') String? riesgoId,
    @JsonKey(name: 'riesgo_nombre') String? riesgoNombre,
    @JsonKey(name: 'coor_estado_id') String? coorEstadoId,
    @JsonKey(name: 'coor_estado_nombre') String? coorEstadoNombre,
    @JsonKey(name: 'coordinador_id') String? coordinadorId,
    @JsonKey(name: 'coordinador_nombre') String? coordinadorNombre,
    @JsonKey(name: 'fecha_solicitud') String? fechaSolicitud,
    @JsonKey(name: 'entrega_al_cliente_fecha') String? entregaAlClienteFecha,
    @JsonKey(name: 'fecha_entrega') String? fechaEntrega,
    @JsonKey(name: 'solicitante_id') String? solicitanteId,
    @JsonKey(name: 'solicitante_nombre') String? solicitanteNombre,
    @JsonKey(name: 'contacto_id') String? contactoId,
    @JsonKey(name: 'contacto_nombre') String? contactoNombre,
    @JsonKey(name: 'cliente_id') String? clienteId,
    @JsonKey(name: 'cliente_nombre') String? clienteNombre,
    @JsonKey(name: 'servicio_tipo_id') String? servicioTipoId,
    @JsonKey(name: 'servicio_tipo_nombre') String? servicioTipoNombre,
    @JsonKey(name: 'tipo_cambio_id') String? tipoCambioId,
    @JsonKey(name: 'tipo_cambio_nombre') String? tipoCambioNombre,
    @JsonKey(name: 'tipo_inspeccion_id') String? tipoInspeccionId,
    @JsonKey(name: 'tipo_inspeccion_nombre') String? tipoInspeccionNombre,
    @JsonKey(name: 'modalidad_id') String? modalidadId,
    @JsonKey(name: 'modalidad_nombre') String? modalidadNombre,
    @JsonKey(name: 'inspeccion_id') String? inspeccionId,
    @JsonKey(name: 'perito_id') String? peritoId,
    @JsonKey(name: 'perito_nombre') String? peritoNombre,
    @JsonKey(name: 'inspeccion_contacto') String? inspeccionContacto,
    @JsonKey(name: 'inspeccion_fecha') String? inspeccionFecha,
    @JsonKey(name: 'inspeccion_fecha_normal') String? inspeccionFechaNormal,
    @JsonKey(name: 'inspeccion_hora') String? inspeccionHora,
    @JsonKey(name: 'inspeccion_hora_tipo') String? inspeccionHoraTipo,
    @JsonKey(name: 'distrito_id') String? distritoId,
    @JsonKey(name: 'distrito_nombre') String? distritoNombre,
    @JsonKey(name: 'provincia_id') String? provinciaId,
    @JsonKey(name: 'provincia_nombre') String? provinciaNombre,
    @JsonKey(name: 'departamento_id') String? departamentoId,
    @JsonKey(name: 'departamento_nombre') String? departamentoNombre,
    @JsonKey(name: 'inspeccion_direccion') String? inspeccionDireccion,
    @JsonKey(name: 'inspeccion_latitud') String? inspeccionLatitud,
    @JsonKey(name: 'inspeccion_longitud') String? inspeccionLongitud,
    @JsonKey(name: 'inspeccion_observacion') String? inspeccionObservacion,
    @JsonKey(name: 'estado_id') String? estadoId,
    @JsonKey(name: 'estado_nombre') String? estadoNombre,
    @JsonKey(name: 'info_status') String? infoStatus,
    @JsonKey(name: 'digitador_id') String? digitadorId,
    @JsonKey(name: 'digitador_nombre') String? digitadorNombre,
    @JsonKey(name: 'control_calidad_id') String? controlCalidadId,
    @JsonKey(name: 'control_calidad_nombre') String? controlCalidadNombre,
    @JsonKey(name: 'tipo_visita_id') String? tipoVisitaId,
    @JsonKey(name: 'tipo_visita_nombre') String? tipoVisitaNombre,
  }) = _Coordinacion;

  factory Coordinacion.fromJson(Map<String, dynamic> json) =>
      _$CoordinacionFromJson(json);
}
