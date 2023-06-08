import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.blueAccent, 
          Colors.cyan),
      ),
    ),
  );
  //const Text("Hello World!");
  //runApp(const MaterialApp(home: Text("flutter")));
  //runApp (const Text('Hello World'));
}


