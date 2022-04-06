import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_detail_page.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_page.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_register_page.dart';
import 'package:auto_route/auto_route.dart';

const inspeccionRouter =
    AutoRoute(path: '/inspeccion/:tipoInspeccionId', page: InspeccionPage);

const inspeccionDetailRouter =
    AutoRoute(path: '/inspeccion/:coordinacionId', page: InspeccionDetailPage);

const inspeccionRegisterRouter =
    AutoRoute(path: '/inspeccion/registrar', page: InspeccionRegisterPage);
