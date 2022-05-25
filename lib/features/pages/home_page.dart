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
      (AuthenticationBloc bloc) => bloc.state.user?.full_name,
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: height,
            width: width,
            child: Column(children: <Widget>[
              Text('LISTA DE INSPECCIONES',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 5,
              ),
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
                accountName: Text(userName ?? ''),
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
