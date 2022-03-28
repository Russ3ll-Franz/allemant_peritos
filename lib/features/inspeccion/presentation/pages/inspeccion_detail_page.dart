import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_detail_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_detail_test_page.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/inspeccion_detail_view_page.dart';
import 'package:allemant_peritos/features/widgets/loading_indicators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class InspeccionDetailPage extends StatelessWidget {
  final String coordinacionID;

  const InspeccionDetailPage({Key? key, required this.coordinacionID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left, color: Color(0xFF545D68)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "HOJA DE COORDINACIÓN",
          style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 18,
              color: Color(0xFF545D68),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          InspeccionDetailView(
            displayInspeccion: coordinacionID,
          ),
        ],
      ),
    );

    /*  BlocBuilder<InspeccionDetailCubit, InspeccionDetailState>(
            builder: (context, state) {
          return state.when(inspeccionDetailInitial: () {
            return LoadingIndicators.instance.smallLoadingAnimation(context);
          }, inspeccionDetailLoading: () {
            return LoadingIndicators.instance.smallLoadingAnimation(context);
          }, inspeccionDetailLoaded: (inspeccionDetailLoaded) {
            return InspeccionDetailPage(coordinacionID: coordinacionID);
          }, error: (error) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (state as InspeccionDetailErrorState).message,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<InspeccionDetailCubit>()
                        .getInspeccionByCoordinacion(coordinacionID);
                  },
                  child: const Text('Reintentar'),
                )
              ],
            );
          });
        }) */
  }
}
