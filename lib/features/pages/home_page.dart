import 'package:allemant_peritos/application/bloc/authentication/authentication_bloc.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/pages/list_inspeccion.dart';
import 'package:allemant_peritos/features/widgets/grid_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String tipoInspeccion = '1';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final userName = context.select(
      (AuthenticationBloc bloc) => bloc.state.user!.full_name,
    );
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: Colors.transparent),
        elevation: 0,
        backgroundColor: Colors.transparent,
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
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Container(
            height: height,
            width: width,
            child: Column(children: <Widget>[
              /*  SizedBox(
                height: 215,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Container(
                    height: 195,
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('50% off',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('For Any Courses',
                                style: TextStyle(
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300)),
                            const SizedBox(
                              height: 6,
                            ),
                            ElevatedButton(
                              //on pressed
                              onPressed: () async {},
                              //text to shoe in to the button
                              child: const Text('Join Now!',
                                  style: TextStyle(color: Colors.white)),
                              //style section code here
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all<double>(0),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.blueAccent,
                    ),
                  ),
                  Positioned(
                    right: -2,
                    top: -2,
                    child: Image.network(
                      'https://i.ibb.co/7Kr3Vc2/Screenshot-2022-02-23-at-6-11-05-PM-removebg-preview.png',
                      fit: BoxFit.cover,
                      height: 205,
                    ),
                  )
                ]),
              ),
             
              SizedBox(height: 10), */
              /* Expanded(
                child: ListInspeccion(
                  idTipoTasacion: tipoInspeccion,
                ),
              ), */
              ListInspeccion(
                idTipoTasacion: tipoInspeccion,
              ),
            ]),
          ),
        ),
      ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text(userName),
                currentAccountPicture: const CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/images/person/user.jpg'),
                  backgroundColor: Colors.white,
                ),
                accountEmail: null,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.account_circle,
              ),
              title: const Text('Registrados'),
              onTap: () {
                //ProfileScreen(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurar'),
              onTap: () {
                //SettingScreen(context);
              },
            ),
            ListTile(
              leading: const Icon(Iconsax.logout),
              title: const Text('Logout'),
              onTap: () {
                context
                    .read<AuthenticationBloc>()
                    .add(const AuthenticationLogoutRequested());
              },
            ),
          ],
        ),
      ),
    );
  }
}
