import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_list.dart';
import 'package:flutter/material.dart';

import 'package:allemant_peritos/features/inspeccion/presentation/widgets/inspeccion_tipo_screen.dart';
import 'package:iconsax/iconsax.dart';

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
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          InspeccionBody(
              mySize: size,
              myCategoryHeight: categoryHeight,
              idTipoTasacion: tipoInspeccionId)
        ],
      ),
    ));
  }

  /*@override
  Widget build(BuildContext context) {
    return Container();
      return BlocProvider(
      create: (_) => InspeccionBloc(inspeccionRepository),
      child: InspeccionView(tipoInspId: tipoInspeccionId),
    );
  }*/
}

class InspeccionView extends StatelessWidget {
  const InspeccionView({Key? key, required this.tipoInspId}) : super(key: key);
  final String tipoInspId;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.25;
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          InspeccionBody(
              mySize: size,
              myCategoryHeight: categoryHeight,
              idTipoTasacion: tipoInspId)
        ],
      ),
    ));
  }
}

/*   InspeccionPage({
    Key? key,
    required this.tipoInspeccionId,
  }) : super(key: key);
  final String tipoInspeccionId;

  final InspeccionTipoScroller categoriesScroller =
      const InspeccionTipoScroller();

  ScrollController controller = ScrollController();
  double topContainer = 0;
  bool closeTopContainer = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.25;
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(context),
      body: Container(
          child: Column(
        children: [
          InspeccionBody(
              mySize: size,
              myCategoryHeight: categoryHeight,
              idTipoTasacion: tipoInspeccionId)
        ],
      )),
    ));
  } */

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(Iconsax.arrow_left, color: Color(0xFF545D68)),
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
