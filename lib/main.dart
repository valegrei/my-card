import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My card App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff51a63c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.orangeAccent,
            backgroundImage: AssetImage("assets/images/foto1.jpg"),
          ),
          const Text(
            "Víctor Augusto Alegre Ibáñez",
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontFamily: "Lobster"),
          ),
          const Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
                fontSize: 20, color: Colors.white70, fontFamily: "Manrope"),
          ),
          const Divider(
            thickness: 0.9,
            indent: 70,
            endIndent: 70,
            color: Colors.white,
          ),
          const Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Color(0xff51a63c),
                size: 30.0,
              ),
              title: Text(
                "+51 924 448 546",
                style: TextStyle(fontFamily: "Manrope", fontSize: 18.0),
              ),
            ),
          ),
          const Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Color(0xff51a63c),
                size: 30.0,
              ),
              title: Text(
                "valegreib@gmail.com",
                style: TextStyle(fontFamily: "Manrope", fontSize: 18.0),
              ),
            ),
          ),
          SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/facebook.png",
                height: 42.0,
              ),
              const SizedBox(width: 24.0),
              Image.asset(
                "assets/images/twitter.png",
                height: 42.0,
              ),
              const SizedBox(width: 24.0),
              Image.asset(
                "assets/images/instagram.png",
                height: 42.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
