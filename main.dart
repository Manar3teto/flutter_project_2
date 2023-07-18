import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/Pages/Login.dart';
import 'package:flutter_application_youtube/Pages/Signup.dart';
import 'package:flutter_application_youtube/Pages/Welcome.dart';

void main() {
  runApp(new Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcom(),
        "/Login": (context) => const Login(),
        "/Sinup": (context) => const Signup(),
      },
    );
  }
}
