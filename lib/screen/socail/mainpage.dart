import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:social/screen/socail/addpage.dart';
import 'package:social/screen/socail/homepage.dart';
import 'package:social/screen/socail/peronpage.dart';
import 'package:social/screen/socail/searchpage.dart';
import 'package:social/screen/socail/vdopage.dart';
import 'package:social/util/navbar.dart';

final screen = [Homepage(), Searchpage(), Addpage(), Vdopage(), Personpage()];


class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  
int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: Navbar()
    );
  }
}
