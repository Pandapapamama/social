import 'package:flutter/material.dart';
import 'package:social/util/util_storyies.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 230, 238, 250)
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_rounded)),
            ),
            Text("Explore", style: TextStyle(fontWeight: FontWeight.bold)),

            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 230, 238, 250)
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
              ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      circle_Story(stroyName: "You"),
                      circle_Story(stroyName: "Benjamin"),
                      circle_Story(stroyName: "Farita"),
                      circle_Story(stroyName: "Marie"),
                      circle_Story(stroyName: "Claire"),
                      circle_Story(stroyName: "Jeff"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),
              WidgetExplore(postMainName: "Claire Dangais", postSecName: "@ClaireD15"),
              WidgetExplore(postMainName: "Farita Smith", postSecName: "@SmithFa"),
              WidgetExplore(postMainName: "Benjamin Franklin", postSecName: "@Benlnwza"),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
