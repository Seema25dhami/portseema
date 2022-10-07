import 'package:flutter/material.dart';
import 'package:portseema/appbar.dart';
import 'package:portseema/profile.dart';
import 'package:portseema/projectpage.dart';
import 'myStyle.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: ListView(
            children: [
              Stack(
                children: [
                  ProjectsPage(),// projects page
                  //projects
                  Profile(), //Profile
                  MyAppBar(),//  AppBar
                ],

              )
            ],
          ),
        ),
      ),

    );
  }
}