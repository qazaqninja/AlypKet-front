import 'package:flutter/material.dart';

import '../models/image_card.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 24, 63),
        title: Text("New Posts"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0), child: Text("Create Post")),
    );
  }
}
