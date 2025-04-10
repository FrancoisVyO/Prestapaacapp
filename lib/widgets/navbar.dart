import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onIndexChanged;

  const Navbar({
    Key? key,
    required this.selectedIndex,
    required this.onIndexChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final alturaPantalla = MediaQuery.of(context).size.height * .1;

    return NavigationBar(
      onDestinationSelected: onIndexChanged,
      indicatorColor: Colors.green[300],
      backgroundColor: Colors.green,
      selectedIndex: selectedIndex,
      height: alturaPantalla,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Inicio',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.store),
          icon: Icon(Icons.store_outlined),
          label: 'Sucursales',
        ),
      ],
    );
  }
}
