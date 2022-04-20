import 'package:flutter/material.dart';

import '../models/image_card.dart';

class MyPosts extends StatelessWidget {
  // In the constructor, require a Todo.
  const MyPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 24, 63),
        title: Text("My Posts"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0), child: Text("View my posts")),
    );
  }
}
