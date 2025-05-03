import 'package:flutter/material.dart';


class circle_Story extends StatelessWidget {
  final String stroyName;
  final String imageUrl;
  circle_Story({super.key, required this.stroyName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, right: 5),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 100, 143, 217),
                width: 3.0,
              ),
            ),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ),
          SizedBox(height: 3),
          Text(stroyName, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

//_____________________________________________________________________\\

class WidgetExplore extends StatelessWidget {
  final String postMainName;
  final String postSecName;
  final String imageUrl;
  WidgetExplore({
    super.key,
    required this.postMainName,
    required this.postSecName,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 340,
        width: 390,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color.fromARGB(255, 230, 238, 250),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 2),
                          image: DecorationImage(
                            image: NetworkImage(imageUrl)
                            ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          postMainName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          postSecName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: const Color.fromARGB(255, 108, 122, 156),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 370,
              height: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Container(width: 390, height: 50),
            ),
          ],
        ),
      ),
    );
  }
}
