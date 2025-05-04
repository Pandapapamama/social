import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';



class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final _navigationKey = GlobalKey<CurvedNavigationBarState>();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        key: _navigationKey,
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(230, 87, 144, 223),
        onTap: (index) {
          setState(() {
           _selectedIndex = index;
          });
        },
        items: [
          Icon(Icons.home_filled, size: 30, color: Colors.white),
          Icon(Icons.search_rounded, size: 30, color: Colors.white),
          Icon(Icons.add_box_outlined, size: 30, color: Colors.white),
          Icon(Icons.video_library, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
      );
  }
}