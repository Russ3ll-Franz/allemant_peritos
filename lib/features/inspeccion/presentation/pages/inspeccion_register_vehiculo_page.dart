import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InspeccionRegisterVehiculoPage extends StatelessWidget {
  const InspeccionRegisterVehiculoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, // dark text for status bar
        statusBarColor: Colors.transparent));

    return Scaffold(
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "INSPECCIÓN VEHICULAR",
        style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 18,
            color: Color(0xFF545D68),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
