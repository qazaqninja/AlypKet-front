import 'package:flutter/material.dart';

import '../models/image_card.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 24, 63),
        title: Text("Profile"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0), child: Text("profile page")),
    );
  }
}
