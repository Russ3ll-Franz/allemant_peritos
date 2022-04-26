import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita.freezed.dart';
part 'visita.g.dart';

@freezed
class Visita with _$Visita {
  factory Visita({
    @JsonKey(name: 'inspeccion_codigo') String? inspeccionCodigo,
    String? atendido,
    String? direccion,
    @JsonKey(name: 'nro_suministro') String? nroSuministro,
    @JsonKey(name: 'nro_puerta') String? nroPuerta,
    @JsonKey(name: 'ocupado_codigo') String? ocupadoCodigo,
    @JsonKey(name: 'uso_codigo') String? usoCodigo,
    @JsonKey(name: 'muro_codigo') String? muroCodigo,
    @JsonKey(name: 'techo_codigo') String? techoCodigo,
    @JsonKey(name: 'instalacion_electrica_codigo')
        String? instalacionElectricaCodigo,
    @JsonKey(name: 'instalacion_sanitaria_codigo')
        String? instalacionSanitariaCodigo,
    @JsonKey(name: 'calidad_construccion_codigo')
        String? calidadConstruccionCodigo,
    @JsonKey(name: 'puerta_tipo_codigo') String? puertaTipoCodigo,
    @JsonKey(name: 'puerta_sistema_codigo') String? puertaSistemaCodigo,
    @JsonKey(name: 'puerta_material_codigo') String? puertaMaterialCodigo,
    @JsonKey(name: 'ventana_marco_codigo') String? ventanaMarcoCodigo,
    @JsonKey(name: 'ventana_vidrio_codigo') String? ventanaVidrioCodigo,
    @JsonKey(name: 'ventana_sistema_codigo') String? ventanaSistemaCodigo,
    @JsonKey(name: 'piso_tipo_codigo') String? pisoTipoCodigo,
    @JsonKey(name: 'piso_tipo2_codigo') String? pisoTipo2Codigo,
    @JsonKey(name: 'revestimiento_tipo_codigo') String? revestimientoTipoCodigo,
    @JsonKey(name: 'revestimiento_tipo2_codigo')
        String? revestimientoTipo2Codigo,
    @JsonKey(name: 'infraestructura_disponible_vias_codigo')
        String? infraestructuraDisponibleViasCodigo,
    @JsonKey(name: 'infraestructura_disponible_veredas_codigo')
        String? infraestructuraDisponibleVeredasCodigo,
    @JsonKey(name: 'infraestructura_disponible_alcantarillado_codigo')
        String? infraestructuraDisponibleAlcantarilladoCodigo,
    @JsonKey(name: 'infraestructura_disponible_agua_codigo')
        String? infraestructuraDisponibleAguaCodigo,
    @JsonKey(name: 'infraestructura_disponible_alumbrado_codigo')
        String? infraestructuraDisponibleAlumbradoCodigo,
    @JsonKey(name: 'infraestructura_calidad_vias_codigo')
        String? infraestructuraCalidadViasCodigo,
    @JsonKey(name: 'infraestructura_calidad_veredas_codigo')
        String? infraestructuraCalidadVeredasCodigo,
    @JsonKey(name: 'infraestructura_calidad_alcantarillado_codigo')
        String? infraestructuraCalidadAlcantarilladoCodigo,
    @JsonKey(name: 'infraestructura_calidad_agua_codigo')
        String? infraestructuraCalidadAguaCodigo,
    @JsonKey(name: 'infraestructura_calidad_alumbrado_codigo')
        String? infraestructuraCalidadAlumbradoCodigo,
    @JsonKey(name: 'infraestructura_conservacion_vias_codigo')
        String? infraestructuraConservacionViasCodigo,
    @JsonKey(name: 'infraestructura_conservacion_veredas_codigo')
        String? infraestructuraConservacionVeredasCodigo,
    @JsonKey(name: 'infraestructura_conservacion_alcantarillado_codigo')
        String? infraestructuraConservacionAlcantarilladoCodigo,
    @JsonKey(name: 'infraestructura_conservacion_agua_codigo')
        String? infraestructuraConservacionAguaCodigo,
    @JsonKey(name: 'infraestructura_conservacion_alumbrado_codigo')
        String? infraestructuraConservacionAlumbradoCodigo,
    String? longitud,
    String? latitud,
    String? usuario,
    @JsonKey(name: 'distribucion_inmueble') String? distribucionInmueble,
    String? observacion,
  }) = _Visita;

  factory Visita.fromJson(Map<String, dynamic> json) => _$VisitaFromJson(json);
}
