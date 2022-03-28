import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InspeccionDetailTest extends StatefulWidget {
  final String displayInspeccion;

  const InspeccionDetailTest({Key? key, required this.displayInspeccion})
      : super(key: key);

  @override
  State<InspeccionDetailTest> createState() => _InspeccionDetailTestState();
}

class _InspeccionDetailTestState extends State<InspeccionDetailTest> {
  @override
  void initState() {
    super.initState();
    context
        .read<InspeccionDetailCubit>()
        .getInspeccionByCoordinacion(widget.displayInspeccion);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
