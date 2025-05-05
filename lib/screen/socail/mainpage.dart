import 'package:flutter/material.dart';
import 'package:social/screen/socail/addpage.dart';
import 'package:social/screen/socail/homepage.dart';
import 'package:social/screen/socail/peronpage.dart';
import 'package:social/screen/socail/searchpage.dart';
import 'package:social/screen/socail/vdopage.dart';
import 'package:social/util/navbar.dart';


class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final screen = [Homepage(), Searchpage(), Addpage(), Vdopage(), Personpage()];
int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: Navbar(
        selectedIndex: _selectedIndex, 
        onIndexChannged: (index){ //ย้ายไปหน้าที่ index ใน List screen
          setState(() {
            _selectedIndex = index; //แทนค่า selectedIndex = index
          });
        },)
    );
  }
}
