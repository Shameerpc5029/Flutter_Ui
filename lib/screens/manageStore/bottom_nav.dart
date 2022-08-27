import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedFontSize: 20,
      onTap: _onItemTapped,
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: const TextStyle(
        color: Colors.black,
      ),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
          ),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.grid_view,
          ),
          label: 'Products',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Manage'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline_outlined,
          ),
          label: 'Account',
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
