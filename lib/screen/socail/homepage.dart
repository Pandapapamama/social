
import 'package:flutter/material.dart';

import 'package:social/util/util_storyies.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
                      circle_Story(
                        stroyName: "You",
                        imageUrl:
                            "https://cdn.lucidpic.com/cdn-cgi/image/w=600,format=auto,metadata=none/66c43b25bee70.png",
                      ),
                      circle_Story(
                        stroyName: "Benjamin",
                        imageUrl:
                            "https://hips.hearstapps.com/hmg-prod/images/benjamin-franklin_editedjpg.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*",
                      ),
                      circle_Story(
                        stroyName: "Farita",
                        imageUrl:
                            "https://cdn.lucidpic.com/cdn-cgi/image/w=600,format=auto,metadata=none/66c4384702f8f.png",
                      ),
                      circle_Story(
                        stroyName: "Marie",
                        imageUrl:
                            "https://cdn.lucidpic.com/cdn-cgi/image/w=600,format=auto,metadata=none/675703157f0da.png",
                      ),
                      circle_Story(
                        stroyName: "Claire",
                        imageUrl:
                            "https://cdn.lucidpic.com/cdn-cgi/image/w=600,format=auto,metadata=none/66c445a35f781.png",
                      ),
                      circle_Story(
                        stroyName: "Jeff",
                        imageUrl:
                            "https://cdn.lucidpic.com/cdn-cgi/image/w=600,format=auto,metadata=none/66e2f779ab48f.png",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              WidgetExplore(
                postMainName: "Claire Dangais",
                postSecName: "@ClaireD15",
                imageUrl:
                    'https://cdn.lucidpic.com/cdn-cgi/image/w=600,format=auto,metadata=none/66c445a35f781.png',
                exploreImage: "assets/images/bmth.jpg",
              ),
              WidgetExplore(
                postMainName: "Farita Smith",
                postSecName: "@SmithFa",
                imageUrl:
                    'https://cdn.lucidpic.com/cdn-cgi/image/w=600,format=auto,metadata=none/66c4384702f8f.png',
                exploreImage: "assets/images/mark.jpg",
              ),
              WidgetExplore(
                postMainName: "Benjamin Franklin",
                postSecName: "@Benlnwza",
                imageUrl:
                    'https://hips.hearstapps.com/hmg-prod/images/benjamin-franklin_editedjpg.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*',
                exploreImage: "assets/images/dogsleep.jpg",
              ),
            ],
          ),
        ],
      ),
      extendBody: true,
      backgroundColor: Colors.white,
     
    );
  }
}
