import 'package:flutter/material.dart';
import 'package:dice/beautify.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: beautify(Colors.cyan, Colors.deepOrange)),
    ),
  );
}
