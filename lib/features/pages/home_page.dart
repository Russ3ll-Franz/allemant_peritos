import 'package:allemant_peritos/application/bloc/authentication/authentication_bloc.dart';
import 'package:allemant_peritos/features/widgets/grid_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final user = context.select(
      (AuthenticationBloc bloc) => bloc.state.user,
    );
    return SafeArea(
      child: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
          child: Container(
            height: size.height,
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Text(
                    "ALLEMANT PERITOS 🤓",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const GridDashboard()
            ]),
          ),
        ),
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
                  accountName: Text(user?.full_name ?? ''),
                  currentAccountPicture: const CircleAvatar(
                    radius: 40.0,
                    backgroundImage:
                        AssetImage('assets/images/person/user.jpg'),
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
      ),
    );
  }
}
