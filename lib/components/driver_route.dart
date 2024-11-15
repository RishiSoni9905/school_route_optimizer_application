import 'package:flutter/material.dart';

class DriverRoute extends StatelessWidget {
  DriverRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 300.0),
            child: Text("Hi", style: TextStyle(fontSize: 200.0))),
      ],
    );
  }
}
