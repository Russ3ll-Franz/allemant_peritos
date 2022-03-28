import 'package:allemant_peritos/configs/assets.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_list.dart';
import 'package:flutter/material.dart';

import 'package:allemant_peritos/features/inspeccion/presentation/widgets/inspeccion_tipo_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InspeccionPage extends StatelessWidget {
  InspeccionPage({Key? key, required this.tipoInspeccionId}) : super(key: key);
/*   final IInspeccionRepository inspeccionRepository;
 */
  final String tipoInspeccionId;

  final InspeccionTipoScroller categoriesScroller =
      const InspeccionTipoScroller();
  final ScrollController _scrollController = ScrollController();

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.25;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          InspeccionBody(
              mySize: size,
              myCategoryHeight: categoryHeight,
              idTipoTasacion: tipoInspeccionId)
        ],
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  const String assetName = 'assets/icon/svg/arrow-left-from-line.svg';
  final Widget svgArrow = SvgPicture.asset(
    assetName,
  );
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      /* icon: const FaIcon(FontAwesomeIcons.arrowLeft), */
      icon: SvgPicture.asset(
        Assets.assetsIconSvgArrowLeftFromLine,
        color: const Color(0xFF545D68),
        width: 20,
      ),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: const Text(
      "LISTA DE COORDINACIÓN",
      style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 18,
          color: Color(0xFF545D68),
          fontWeight: FontWeight.bold),
    ),
  );
}
