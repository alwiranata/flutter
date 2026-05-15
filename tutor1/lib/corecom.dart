import 'package:flutter/material.dart';

class CoreComHal extends StatelessWidget {
  const CoreComHal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 30,
            height: 30,
            color: Colors.red,
            child: Center(child: Text("Red")),
          ),
          Container(
            width: 60,
            height: 60,
            color: Colors.green,
            child: Center(child: Text("Green")),
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.blue,
            child: Center(child: Text("Blue")),
          ),
        ],
      ),
    );
  }
}
