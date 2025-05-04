import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onIndexChannged;
  Navbar({
    super.key,
    required this.selectedIndex,
    required this.onIndexChannged,
    });

  final _navigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        key: _navigationKey,
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(230, 87, 144, 223),
        index: selectedIndex,
        onTap: onIndexChannged,
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