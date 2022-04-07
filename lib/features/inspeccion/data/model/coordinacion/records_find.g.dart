// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'records_find.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordsFind _$$_RecordsFindFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_RecordsFind',
      json,
      ($checkedConvert) {
        final val = _$_RecordsFind(
          cotizacionId: $checkedConvert('cotizacion_id', (v) => v as String),
          coordinacionId:
              $checkedConvert('coordinacion_id', (v) => v as String),
          coordinacionCorrelativo:
              $checkedConvert('coordinacion_correlativo', (v) => v as String),
          riesgoId: $checkedConvert('riesgo_id', (v) => v as String),
          riesgoNombre: $checkedConvert('riesgo_nombre', (v) => v as String),
          coorEstadoId: $checkedConvert('coor_estado_id', (v) => v as String),
          coorEstadoNombre:
              $checkedConvert('coor_estado_nombre', (v) => v as String),
          coordinadorId: $checkedConvert('coordinador_id', (v) => v as String),
          coordinadorNombre:
              $checkedConvert('coordinador_nombre', (v) => v as String),
          fechaSolicitud:
              $checkedConvert('fecha_solicitud', (v) => v as String),
          entregaAlClienteFecha:
              $checkedConvert('entrega_al_cliente_fecha', (v) => v as String),
          fechaEntrega: $checkedConvert('fecha_entrega', (v) => v as String),
          solicitanteId: $checkedConvert('solicitante_id', (v) => v as String),
          solicitanteNombre:
              $checkedConvert('solicitante_nombre', (v) => v as String),
          contactoId: $checkedConvert('contacto_id', (v) => v as String),
          contactoNombre:
              $checkedConvert('contacto_nombre', (v) => v as String),
          clienteId: $checkedConvert('cliente_id', (v) => v as String),
          clienteNombre: $checkedConvert('cliente_nombre', (v) => v as String),
          servicioTipoId:
              $checkedConvert('servicio_tipo_id', (v) => v as String),
          servicioTipoNombre:
              $checkedConvert('servicio_tipo_nombre', (v) => v as String),
          tipoCambioId: $checkedConvert('tipo_cambio_id', (v) => v as String),
          tipoCambioNombre:
              $checkedConvert('tipo_cambio_nombre', (v) => v as String),
          tipoInspeccionId:
              $checkedConvert('tipo_inspeccion_id', (v) => v as String),
          tipoInspeccionNombre:
              $checkedConvert('tipo_inspeccion_nombre', (v) => v as String),
          modalidadId: $checkedConvert('modalidad_id', (v) => v as String),
          modalidadNombre:
              $checkedConvert('modalidad_nombre', (v) => v as String),
          inspeccionId: $checkedConvert('inspeccion_id', (v) => v as String),
          peritoId: $checkedConvert('perito_id', (v) => v as String),
          peritoNombre: $checkedConvert('perito_nombre', (v) => v as String),
          inspeccionContacto:
              $checkedConvert('inspeccion_contacto', (v) => v as String),
          inspeccionFecha:
              $checkedConvert('inspeccion_fecha', (v) => v as String),
          inspeccionFechaNormal:
              $checkedConvert('inspeccion_fecha_normal', (v) => v as String),
          inspeccionHora:
              $checkedConvert('inspeccion_hora', (v) => v as String),
          inspeccionHoraTipo:
              $checkedConvert('inspeccion_hora_tipo', (v) => v as String),
          distritoId: $checkedConvert('distrito_id', (v) => v as String),
          distritoNombre:
              $checkedConvert('distrito_nombre', (v) => v as String),
          provinciaId: $checkedConvert('provincia_id', (v) => v as String),
          provinciaNombre:
              $checkedConvert('provincia_nombre', (v) => v as String),
          departamentoId:
              $checkedConvert('departamento_id', (v) => v as String),
          departamentoNombre:
              $checkedConvert('departamento_nombre', (v) => v as String),
          inspeccionDireccion:
              $checkedConvert('inspeccion_direccion', (v) => v as String),
          inspeccionLatitud:
              $checkedConvert('inspeccion_latitud', (v) => v as String),
          inspeccionLongitud:
              $checkedConvert('inspeccion_longitud', (v) => v as String),
          inspeccionObservacion:
              $checkedConvert('inspeccion_observacion', (v) => v as String),
          estadoId: $checkedConvert('estado_id', (v) => v as String),
          estadoNombre: $checkedConvert('estado_nombre', (v) => v as String),
          infoStatus: $checkedConvert('info_status', (v) => v as String),
          digitadorId: $checkedConvert('digitador_id', (v) => v as String),
          digitadorNombre:
              $checkedConvert('digitador_nombre', (v) => v as String),
          controlCalidadId:
              $checkedConvert('control_calidad_id', (v) => v as String),
          controlCalidadNombre:
              $checkedConvert('control_calidad_nombre', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'cotizacionId': 'cotizacion_id',
        'coordinacionId': 'coordinacion_id',
        'coordinacionCorrelativo': 'coordinacion_correlativo',
        'riesgoId': 'riesgo_id',
        'riesgoNombre': 'riesgo_nombre',
        'coorEstadoId': 'coor_estado_id',
        'coorEstadoNombre': 'coor_estado_nombre',
        'coordinadorId': 'coordinador_id',
        'coordinadorNombre': 'coordinador_nombre',
        'fechaSolicitud': 'fecha_solicitud',
        'entregaAlClienteFecha': 'entrega_al_cliente_fecha',
        'fechaEntrega': 'fecha_entrega',
        'solicitanteId': 'solicitante_id',
        'solicitanteNombre': 'solicitante_nombre',
        'contactoId': 'contacto_id',
        'contactoNombre': 'contacto_nombre',
        'clienteId': 'cliente_id',
        'clienteNombre': 'cliente_nombre',
        'servicioTipoId': 'servicio_tipo_id',
        'servicioTipoNombre': 'servicio_tipo_nombre',
        'tipoCambioId': 'tipo_cambio_id',
        'tipoCambioNombre': 'tipo_cambio_nombre',
        'tipoInspeccionId': 'tipo_inspeccion_id',
        'tipoInspeccionNombre': 'tipo_inspeccion_nombre',
        'modalidadId': 'modalidad_id',
        'modalidadNombre': 'modalidad_nombre',
        'inspeccionId': 'inspeccion_id',
        'peritoId': 'perito_id',
        'peritoNombre': 'perito_nombre',
        'inspeccionContacto': 'inspeccion_contacto',
        'inspeccionFecha': 'inspeccion_fecha',
        'inspeccionFechaNormal': 'inspeccion_fecha_normal',
        'inspeccionHora': 'inspeccion_hora',
        'inspeccionHoraTipo': 'inspeccion_hora_tipo',
        'distritoId': 'distrito_id',
        'distritoNombre': 'distrito_nombre',
        'provinciaId': 'provincia_id',
        'provinciaNombre': 'provincia_nombre',
        'departamentoId': 'departamento_id',
        'departamentoNombre': 'departamento_nombre',
        'inspeccionDireccion': 'inspeccion_direccion',
        'inspeccionLatitud': 'inspeccion_latitud',
        'inspeccionLongitud': 'inspeccion_longitud',
        'inspeccionObservacion': 'inspeccion_observacion',
        'estadoId': 'estado_id',
        'estadoNombre': 'estado_nombre',
        'infoStatus': 'info_status',
        'digitadorId': 'digitador_id',
        'digitadorNombre': 'digitador_nombre',
        'controlCalidadId': 'control_calidad_id',
        'controlCalidadNombre': 'control_calidad_nombre'
      },
    );

Map<String, dynamic> _$$_RecordsFindToJson(_$_RecordsFind instance) =>
    <String, dynamic>{
      'cotizacion_id': instance.cotizacionId,
      'coordinacion_id': instance.coordinacionId,
      'coordinacion_correlativo': instance.coordinacionCorrelativo,
      'riesgo_id': instance.riesgoId,
      'riesgo_nombre': instance.riesgoNombre,
      'coor_estado_id': instance.coorEstadoId,
      'coor_estado_nombre': instance.coorEstadoNombre,
      'coordinador_id': instance.coordinadorId,
      'coordinador_nombre': instance.coordinadorNombre,
      'fecha_solicitud': instance.fechaSolicitud,
      'entrega_al_cliente_fecha': instance.entregaAlClienteFecha,
      'fecha_entrega': instance.fechaEntrega,
      'solicitante_id': instance.solicitanteId,
      'solicitante_nombre': instance.solicitanteNombre,
      'contacto_id': instance.contactoId,
      'contacto_nombre': instance.contactoNombre,
      'cliente_id': instance.clienteId,
      'cliente_nombre': instance.clienteNombre,
      'servicio_tipo_id': instance.servicioTipoId,
      'servicio_tipo_nombre': instance.servicioTipoNombre,
      'tipo_cambio_id': instance.tipoCambioId,
      'tipo_cambio_nombre': instance.tipoCambioNombre,
      'tipo_inspeccion_id': instance.tipoInspeccionId,
      'tipo_inspeccion_nombre': instance.tipoInspeccionNombre,
      'modalidad_id': instance.modalidadId,
      'modalidad_nombre': instance.modalidadNombre,
      'inspeccion_id': instance.inspeccionId,
      'perito_id': instance.peritoId,
      'perito_nombre': instance.peritoNombre,
      'inspeccion_contacto': instance.inspeccionContacto,
      'inspeccion_fecha': instance.inspeccionFecha,
      'inspeccion_fecha_normal': instance.inspeccionFechaNormal,
      'inspeccion_hora': instance.inspeccionHora,
      'inspeccion_hora_tipo': instance.inspeccionHoraTipo,
      'distrito_id': instance.distritoId,
      'distrito_nombre': instance.distritoNombre,
      'provincia_id': instance.provinciaId,
      'provincia_nombre': instance.provinciaNombre,
      'departamento_id': instance.departamentoId,
      'departamento_nombre': instance.departamentoNombre,
      'inspeccion_direccion': instance.inspeccionDireccion,
      'inspeccion_latitud': instance.inspeccionLatitud,
      'inspeccion_longitud': instance.inspeccionLongitud,
      'inspeccion_observacion': instance.inspeccionObservacion,
      'estado_id': instance.estadoId,
      'estado_nombre': instance.estadoNombre,
      'info_status': instance.infoStatus,
      'digitador_id': instance.digitadorId,
      'digitador_nombre': instance.digitadorNombre,
      'control_calidad_id': instance.controlCalidadId,
      'control_calidad_nombre': instance.controlCalidadNombre,
    };
