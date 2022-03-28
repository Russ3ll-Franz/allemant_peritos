import 'package:allemant_peritos/features/widgets/loading_indicators.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: LoadingWidget());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingIndicators.instance.smallLoadingAnimation(context),
    );
    /*  return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF5F5F5),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: LoadingIndicators.instance.smallLoadingAnimation(context),
    );*/

/*     return LoadingIndicators.instance.smallLoadingAnimation(context);
 */
  }
}
