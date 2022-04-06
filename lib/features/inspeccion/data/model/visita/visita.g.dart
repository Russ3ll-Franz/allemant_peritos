// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, cast_nullable_to_non_nullable, require_trailing_commas

part of 'visita.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Visita _$$_VisitaFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Visita',
      json,
      ($checkedConvert) {
        final val = _$_Visita(
          inspeccionId: $checkedConvert('inspeccion_id', (v) => v as String?),
          atendido: $checkedConvert('atendido', (v) => v as String?),
          direccion: $checkedConvert('direccion', (v) => v as String?),
          nroSuministro: $checkedConvert('nro_suministro', (v) => v as String?),
          nroPuerta: $checkedConvert('nro_puerta', (v) => v as String?),
          ocupado: $checkedConvert('ocupado', (v) => v as String?),
          uso: $checkedConvert('uso', (v) => v as String?),
          muros: $checkedConvert('muros', (v) => v as String?),
          techos: $checkedConvert('techos', (v) => v as String?),
          instElectricas:
              $checkedConvert('inst_electricas', (v) => v as String?),
          instSanitarias:
              $checkedConvert('inst_sanitarias', (v) => v as String?),
          calidadConstruccion:
              $checkedConvert('calidad_construccion', (v) => v as String?),
          puertaTipo: $checkedConvert('puerta_tipo', (v) => v as String?),
          puertaMaterial:
              $checkedConvert('puerta_material', (v) => v as String?),
          puertaSistema: $checkedConvert('puerta_sistema', (v) => v as String?),
          ventanaMarco: $checkedConvert('ventana_marco', (v) => v as String?),
          ventanaVidrio: $checkedConvert('ventana_vidrio', (v) => v as String?),
          ventanaSistema:
              $checkedConvert('ventana_sistema', (v) => v as String?),
          pisoTipo: $checkedConvert('piso_tipo', (v) => v as String?),
          pisoMaterial: $checkedConvert('piso_material', (v) => v as String?),
          revestimientoTipo:
              $checkedConvert('revestimiento_tipo', (v) => v as String?),
          revestimientoMaterial:
              $checkedConvert('revestimiento_material', (v) => v as String?),
          viasDispone: $checkedConvert('vias_dispone', (v) => v as String?),
          viasCalidad: $checkedConvert('vias_calidad', (v) => v as String?),
          viasConservacion:
              $checkedConvert('vias_conservacion', (v) => v as String?),
          veredasDispone:
              $checkedConvert('veredas_dispone', (v) => v as String?),
          veredasCalidad:
              $checkedConvert('veredas_calidad', (v) => v as String?),
          veredasConservacion:
              $checkedConvert('veredas_conservacion', (v) => v as String?),
          alcantarilladoDispone:
              $checkedConvert('alcantarillado_dispone', (v) => v as String?),
          alcantarilladoCalidad:
              $checkedConvert('alcantarillado_calidad', (v) => v as String?),
          alcantarilladoConservacion: $checkedConvert(
              'alcantarillado_conservacion', (v) => v as String?),
          aguapotableDispone:
              $checkedConvert('aguapotable_dispone', (v) => v as String?),
          aguapotableCalidad:
              $checkedConvert('aguapotable_calidad', (v) => v as String?),
          aguapotableConservacion:
              $checkedConvert('aguapotable_conservacion', (v) => v as String?),
          alumbradoDispone:
              $checkedConvert('alumbrado_dispone', (v) => v as String?),
          alumbradoCalidad:
              $checkedConvert('alumbrado_calidad', (v) => v as String?),
          alumbradoConservacion:
              $checkedConvert('alumbrado_conservacion', (v) => v as String?),
          distribucionInmueble:
              $checkedConvert('distribucion_inmueble', (v) => v as String?),
          latitud: $checkedConvert('latitud', (v) => v as String?),
          longitud: $checkedConvert('longitud', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'inspeccionId': 'inspeccion_id',
        'nroSuministro': 'nro_suministro',
        'nroPuerta': 'nro_puerta',
        'instElectricas': 'inst_electricas',
        'instSanitarias': 'inst_sanitarias',
        'calidadConstruccion': 'calidad_construccion',
        'puertaTipo': 'puerta_tipo',
        'puertaMaterial': 'puerta_material',
        'puertaSistema': 'puerta_sistema',
        'ventanaMarco': 'ventana_marco',
        'ventanaVidrio': 'ventana_vidrio',
        'ventanaSistema': 'ventana_sistema',
        'pisoTipo': 'piso_tipo',
        'pisoMaterial': 'piso_material',
        'revestimientoTipo': 'revestimiento_tipo',
        'revestimientoMaterial': 'revestimiento_material',
        'viasDispone': 'vias_dispone',
        'viasCalidad': 'vias_calidad',
        'viasConservacion': 'vias_conservacion',
        'veredasDispone': 'veredas_dispone',
        'veredasCalidad': 'veredas_calidad',
        'veredasConservacion': 'veredas_conservacion',
        'alcantarilladoDispone': 'alcantarillado_dispone',
        'alcantarilladoCalidad': 'alcantarillado_calidad',
        'alcantarilladoConservacion': 'alcantarillado_conservacion',
        'aguapotableDispone': 'aguapotable_dispone',
        'aguapotableCalidad': 'aguapotable_calidad',
        'aguapotableConservacion': 'aguapotable_conservacion',
        'alumbradoDispone': 'alumbrado_dispone',
        'alumbradoCalidad': 'alumbrado_calidad',
        'alumbradoConservacion': 'alumbrado_conservacion',
        'distribucionInmueble': 'distribucion_inmueble'
      },
    );

Map<String, dynamic> _$$_VisitaToJson(_$_Visita instance) => <String, dynamic>{
      'inspeccion_id': instance.inspeccionId,
      'atendido': instance.atendido,
      'direccion': instance.direccion,
      'nro_suministro': instance.nroSuministro,
      'nro_puerta': instance.nroPuerta,
      'ocupado': instance.ocupado,
      'uso': instance.uso,
      'muros': instance.muros,
      'techos': instance.techos,
      'inst_electricas': instance.instElectricas,
      'inst_sanitarias': instance.instSanitarias,
      'calidad_construccion': instance.calidadConstruccion,
      'puerta_tipo': instance.puertaTipo,
      'puerta_material': instance.puertaMaterial,
      'puerta_sistema': instance.puertaSistema,
      'ventana_marco': instance.ventanaMarco,
      'ventana_vidrio': instance.ventanaVidrio,
      'ventana_sistema': instance.ventanaSistema,
      'piso_tipo': instance.pisoTipo,
      'piso_material': instance.pisoMaterial,
      'revestimiento_tipo': instance.revestimientoTipo,
      'revestimiento_material': instance.revestimientoMaterial,
      'vias_dispone': instance.viasDispone,
      'vias_calidad': instance.viasCalidad,
      'vias_conservacion': instance.viasConservacion,
      'veredas_dispone': instance.veredasDispone,
      'veredas_calidad': instance.veredasCalidad,
      'veredas_conservacion': instance.veredasConservacion,
      'alcantarillado_dispone': instance.alcantarilladoDispone,
      'alcantarillado_calidad': instance.alcantarilladoCalidad,
      'alcantarillado_conservacion': instance.alcantarilladoConservacion,
      'aguapotable_dispone': instance.aguapotableDispone,
      'aguapotable_calidad': instance.aguapotableCalidad,
      'aguapotable_conservacion': instance.aguapotableConservacion,
      'alumbrado_dispone': instance.alumbradoDispone,
      'alumbrado_calidad': instance.alumbradoCalidad,
      'alumbrado_conservacion': instance.alumbradoConservacion,
      'distribucion_inmueble': instance.distribucionInmueble,
      'latitud': instance.latitud,
      'longitud': instance.longitud,
    };
