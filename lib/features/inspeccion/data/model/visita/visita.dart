import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita.freezed.dart';
part 'visita.g.dart';

visitaToJson(Visita data) => json.encode(data.toJson());

@freezed
class Visita with _$Visita {
  factory Visita({
    @JsonKey(name: 'inspeccion_id') String? inspeccionId,
    String? atendido,
    String? direccion,
    @JsonKey(name: 'nro_suministro') String? nroSuministro,
    @JsonKey(name: 'nro_puerta') String? nroPuerta,
    String? ocupado,
    String? uso,
    String? muros,
    String? techos,
    @JsonKey(name: 'inst_electricas') String? instElectricas,
    @JsonKey(name: 'inst_sanitarias') String? instSanitarias,
    @JsonKey(name: 'calidad_construccion') String? calidadConstruccion,
    @JsonKey(name: 'puerta_tipo') String? puertaTipo,
    @JsonKey(name: 'puerta_material') String? puertaMaterial,
    @JsonKey(name: 'puerta_sistema') String? puertaSistema,
    @JsonKey(name: 'ventana_marco') String? ventanaMarco,
    @JsonKey(name: 'ventana_vidrio') String? ventanaVidrio,
    @JsonKey(name: 'ventana_sistema') String? ventanaSistema,
    @JsonKey(name: 'piso_tipo') String? pisoTipo,
    @JsonKey(name: 'piso_material') String? pisoMaterial,
    @JsonKey(name: 'revestimiento_tipo') String? revestimientoTipo,
    @JsonKey(name: 'revestimiento_material') String? revestimientoMaterial,
    @JsonKey(name: 'vias_dispone') String? viasDispone,
    @JsonKey(name: 'vias_calidad') String? viasCalidad,
    @JsonKey(name: 'vias_conservacion') String? viasConservacion,
    @JsonKey(name: 'veredas_dispone') String? veredasDispone,
    @JsonKey(name: 'veredas_calidad') String? veredasCalidad,
    @JsonKey(name: 'veredas_conservacion') String? veredasConservacion,
    @JsonKey(name: 'alcantarillado_dispone') String? alcantarilladoDispone,
    @JsonKey(name: 'alcantarillado_calidad') String? alcantarilladoCalidad,
    @JsonKey(name: 'alcantarillado_conservacion')
        String? alcantarilladoConservacion,
    @JsonKey(name: 'aguapotable_dispone') String? aguapotableDispone,
    @JsonKey(name: 'aguapotable_calidad') String? aguapotableCalidad,
    @JsonKey(name: 'aguapotable_conservacion') String? aguapotableConservacion,
    @JsonKey(name: 'alumbrado_dispone') String? alumbradoDispone,
    @JsonKey(name: 'alumbrado_calidad') String? alumbradoCalidad,
    @JsonKey(name: 'alumbrado_conservacion') String? alumbradoConservacion,
    @JsonKey(name: 'distribucion_inmueble') String? distribucionInmueble,
    String? latitud,
    String? longitud,
  }) = _Visita;

  factory Visita.fromJson(Map<String, dynamic> json) => _$VisitaFromJson(json);
}
