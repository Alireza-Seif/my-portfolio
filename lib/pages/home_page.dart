import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        // MAIn
        Container(
          height: 500,
          width: double.maxFinite,
        ),
        // SKILLS
        Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.blueGrey,
        ),
        // Projects
        Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.blueGrey,
        ),
        // CONACT
        Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.blueGrey,
        ),
        // FOOTER
        Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.blueGrey,
        )
      ],
    ));
  }
}
