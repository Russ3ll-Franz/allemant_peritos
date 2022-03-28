import 'package:flutter/material.dart';

const String _imagePath = 'assets/icon/svg/';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const arrowLeft = _Image('arrow-left-from-line.svg');

  static Future precacheAssets(BuildContext context) async {
    await precacheImage(arrowLeft, context);
  }
}
