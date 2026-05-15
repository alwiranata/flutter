import 'package:flutter/material.dart';
import 'package:tutor1/halalamanapi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HalApi());
  }
}
