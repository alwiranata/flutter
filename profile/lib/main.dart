import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfilePage());
  }
}
