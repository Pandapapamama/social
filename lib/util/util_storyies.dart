import 'package:flutter/material.dart';

class circle_Story extends StatelessWidget {
  final String stroyName;
  const circle_Story({
    super.key,
    required this.stroyName});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 15,top: 15,right: 5),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(255, 100, 143, 217),
                  width: 2.0
                )
              ),
            ),
            SizedBox(height: 3,),
            Text(stroyName,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}


//_____________________________________________________________________\\


class WidgetExplore extends StatelessWidget {
    final String postMainName;
  final String postSecName;
  WidgetExplore({
    super.key,
    required this.postMainName,
    required this.postSecName,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 340,
        width: 390,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),color: const Color.fromARGB(255, 230, 238, 250)
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
                      shape: BoxShape.circle
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(postMainName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                        Text(postSecName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: const Color.fromARGB(255, 108, 122, 156)),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 370,
              height: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white
              ),
              child: Container(
                width: 390,
                height: 50,
              ),
            )
          ],
        ),
      ),
    );

  }
}