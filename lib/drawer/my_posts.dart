import 'package:alypket/detail_screen.dart';
import 'package:flutter/material.dart';

import '../models/image_card.dart';

class MyPosts extends StatelessWidget {
  // In the constructor, require a Todo.
   MyPosts({Key? key}) : super(key: key);

   List<ImageCards> cards = [
    ImageCards(
      id: 'p1',
      title: 'Beginning Flutter With Dart',
      fromA: "California",
      toB: "New-York",
      price: 10.0,
      contact: "8776-627-27-54",
      email: "darmshtadtkd@gmail.com",
      description:
          "Cghjkyj ye;yj fdjkfjdkfjskfjdslfsd hjdfdh jshfjds hdjshjdhsj hdjshdjshdajshdkasj hasjdhasjkdhasjkdhasjkdhajkshdasjdkhasjkdhasjkd",
      imageUrl:
          'https://opt-1102402.ssl.1c-bitrix-cdn.ru/upload/iblock/f0d/khotite_vernut_tovar_v_internet_magazin_1.jpg?1581065827116637',
    ),
    ImageCards(
      id: 'p2',
      title: 'Flutter State Management',
      fromA: "California",
      toB: "New-York",
      price: 9.99,
      contact: "8776-627-27-54",
      email: "darmshtadtkd@gmail.com",
      description:
          "Cghjkyj ye;yj fdjkfjdkfjskfjdslfsd hjdfdh jshfjds hdjshjdhsj hdjshdjshdajshdkasj hasjdhasjkdhasjkdhasjkdhajkshdasjdkhasjkdhasjkd",
      imageUrl:
          'https://opt-1102402.ssl.1c-bitrix-cdn.ru/upload/iblock/f0d/khotite_vernut_tovar_v_internet_magazin_1.jpg?1581065827116637',
    ),
    ImageCards(
      id: 'p3',
      title: 'Flutter State Management',
      fromA: "California",
      toB: "New-York",
      price: 9.99,
      contact: "8776-627-27-54",
      email: "darmshtadtkd@gmail.com",
      description:
          "Cghjkyj ye;yj fdjkfjdkfjskfjdslfsd hjdfdh jshfjds hdjshjdhsj hdjshdjshdajshdkasj hasjdhasjkdhasjkdhasjkdhajkshdasjdkhasjkdhasjkd",
      imageUrl:
          'https://opt-1102402.ssl.1c-bitrix-cdn.ru/upload/iblock/f0d/khotite_vernut_tovar_v_internet_magazin_1.jpg?1581065827116637',
    ),
    ImageCards(
      id: 'p4',
      title: 'Flutter State Management',
      fromA: "California",
      toB: "New-York",
      price: 9.99,
      contact: "8776-627-27-54",
      email: "darmshtadtkd@gmail.com",
      description:
          "Cghjkyj ye;yj fdjkfjdkfjskfjdslfsd hjdfdh jshfjds hdjshjdhsj hdjshdjshdajshdkasj hasjdhasjkdhasjkdhasjkdhajkshdasjdkhasjkdhasjkd",
      imageUrl:
          'https://opt-1102402.ssl.1c-bitrix-cdn.ru/upload/iblock/f0d/khotite_vernut_tovar_v_internet_magazin_1.jpg?1581065827116637',
    ),
    ImageCards(
      id: 'p5',
      title: 'Flutter State Management',
      fromA: "California",
      toB: "New-York",
      price: 9.99,
      contact: "8776-627-27-54",
      email: "darmshtadtkd@gmail.com",
      description:
          "Cghjkyj ye;yj fdjkfjdkfjskfjdslfsd hjdfdh jshfjds hdjshjdhsj hdjshdjshdajshdkasj hasjdhasjkdhasjkdhasjkdhajkshdasjdkhasjkdhasjkd",
      imageUrl:
          'https://opt-1102402.ssl.1c-bitrix-cdn.ru/upload/iblock/f0d/khotite_vernut_tovar_v_internet_magazin_1.jpg?1581065827116637',
    )
  ];

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 24, 63),
        title: Text("My Posts"),
      ),
      body: 
      Container(
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: cards.length,
                    itemBuilder: (BuildContext cnt, int i) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 270,
                        //width: 390,
                        child: Stack(
                          children: [
                            Positioned(
                              child: InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailScreen(cards: cards[i]),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.network(
                                    cards[i].imageUrl,
                                    fit: BoxFit.fill,
                                    height: 270,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "    ${cards[i].title}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "    From ${cards[i].fromA} to ${cards[i].toB}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      // textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
