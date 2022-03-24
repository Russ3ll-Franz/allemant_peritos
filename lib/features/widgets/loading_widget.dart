import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: LoadingWidget());

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
