import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final alturaPantalla = MediaQuery.of(context).size.height * .1;
    final anchoPantalla = MediaQuery.of(context).size.width * 1;
    final ThemeData theme = Theme.of(context);
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      indicatorColor: Colors.green[300],
      backgroundColor: Colors.green,
      selectedIndex: currentPageIndex,
      height: alturaPantalla,      
      destinations: const <Widget>[
        NavigationDestination(                    
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Inicio',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.store),
          icon: Icon(
            Icons.store_outlined,
          ),
          label: 'Sucursales',
        ),        
      ],
    );
  }
}
