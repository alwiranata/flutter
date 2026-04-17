import 'package:flutter/material.dart';
import 'package:tutor1/beranda.dart';

class HalLogin extends StatefulWidget {
  const HalLogin({super.key});

  @override
  State<HalLogin> createState() => _HalLoginState();
}

class _HalLoginState extends State<HalLogin> {
  int counter = 0;

  void incremennt() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text("Login"),
        actions: [Icon(Icons.notifications_active_outlined)],
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Anime.jpg", width: 200, height: 200),
            Text(
              "Counter $counter",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    incremennt();
                  },
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    decrement();
                  },
                  child: Text("-"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalBeranda()),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
