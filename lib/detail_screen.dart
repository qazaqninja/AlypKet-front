import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/image_card.dart';


class DetailScreen extends StatelessWidget {
  
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.cards}) : super(key: key);

  final ImageCards cards;

  
  @override
  Widget build(BuildContext context) {
    openwhatsapp() async {
    var whatsapp = "87766272750";
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=hello";
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }

    // Use the Todo to create the UI.
    Image img = Image.network(cards.imageUrl);
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 24, 63),,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 24, 63),
        title: Text(cards.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:16.0, right: 16),
        child: ListView(
          // height: MediaQuery.of(context).size.height,
          children: 
            [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 190,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: img.image, fit: BoxFit.fitWidth),
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cards.title,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                )),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  
                  cards.description,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    
                    "FROM",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  
                  cards.fromA,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  
                  "TO",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  
                  cards.toB,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  
                  "PRICE: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  
                  "${cards.price.toInt()}\$",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    openwhatsapp();
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 24, 63),
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(30)),
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        
                        "Link to the chat",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
