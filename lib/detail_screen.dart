import 'package:flutter/material.dart';

import '../models/image_card.dart';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.cards}) : super(key: key);

  final ImageCards cards;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(cards.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("${cards.price}"),
            Text(cards.description),
            Text(cards.email),
            Text(cards.fromA),
            Text(cards.toB),
            Text(cards.contact)
          ],
        ),
      ),
    );
  }
}
