import 'package:flutter/material.dart';
import 'package:social/screen/socail/homepage.dart';
import 'package:social/screen/socail/mainpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Login",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Mainpage()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: Text(
              "   Login   ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
