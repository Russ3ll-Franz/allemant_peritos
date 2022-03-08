import 'package:allemant_peritos/core/injection/injection.dart';
import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/data/repositories/inspeccion_repository.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/bloc/inspeccion_bloc.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class InspeccionPage extends StatelessWidget {
  const InspeccionPage({Key? key, @PathParam() required this.tipoInspeccionId}) : super(key: key);
  final String tipoInspeccionId;

  /*  */
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.25;
/*     final myrepository = context.read<InspeccionRepository>();
 */
    return BlocProvider<InspeccionBloc>(
      create: (context) {
        print(context);

        return InspeccionBloc(context.read<InspeccionRepository>());
      },
/*       create: getIt(),
 */
/*       userRepository: context.repository<UserRepository>(),
 */
      child: SafeArea(
          child: Scaffold(
        appBar: buildAppBar(context),
        body: Column(
          children: [InspeccionBody(mySize: size, myCategoryHeight: categoryHeight, idTipoTasacion: tipoInspeccionId)],
        ),
      )),
    );
  }
}

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
      style: TextStyle(fontFamily: 'Nunito', fontSize: 18, color: Color(0xFF545D68), fontWeight: FontWeight.bold),
    ),
  );
}
