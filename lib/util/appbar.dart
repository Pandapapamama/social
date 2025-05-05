import 'package:flutter/material.dart';
//if want to create CustomAppbar need to set prefeerdsizewidget to tell flutter about lenght of appbar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 230, 238, 250),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_rounded),
            ),
          ),
          Text("Explore", style: TextStyle(fontWeight: FontWeight.bold)),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 230, 238, 250),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); //kToolbarHeight = 56px
}