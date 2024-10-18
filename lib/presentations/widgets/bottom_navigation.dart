import 'package:flutter_modular_app_template/presentations/routes/app_module_routes.dart';
import 'package:flutter_modular_app_template/presentations/utils/utils.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final String? path;
  int? currentIndex;

  BottomNavigation({
    Key? key,
    required this.path,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).colorScheme.onBackground,
      onTap: (index) {
        var initial = index;

        index = widget.path == '/'
            ? index
            : index > 1
            ? index + 1
            : index;

        switch (index) {
          case 0:
            setState(() {
              _selectedIndex = index;
            });

            if (widget.path != '/') {
              Nav.pop();
            }
            break;
          case 1:
            setState(() {
              _selectedIndex = index;
            });
            break;
          case 2:
            setState(() {
              _selectedIndex = index;
            });
            break;
          default:
            break;
        }

        widget.currentIndex = initial;
      },
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Perfil',
        ),
      ],
    );
  }
}
