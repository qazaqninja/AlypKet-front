import 'dart:io';

import 'package:alypket/detail_screen.dart';
import 'package:alypket/drawer/create_post.dart';
import 'package:alypket/drawer/my_posts.dart';
import 'package:alypket/drawer/profile.dart';
import 'package:alypket/models/image_card.dart';
import 'package:alypket/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    // final authService = Provider.of<AuthService>(context);
//     return Scaffold(
//         body: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Center(child: Text("AlypKet")),
//         Center(
//           child: ElevatedButton(
//               onPressed: () async {
//                 await authService.signOut();
//               },
//               child: Text("Logout")),
//         )
//       ],
//     ));
//   }
// }


class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  
  final List<ImageCards> cards = [
    ImageCards(
      id: 'p1',
      title: 'Macbook Pro',
      fromA: "California",
      toB: "New-York",
      price: 2000,
      contact: "8776-627-27-54",
      email: "darmshtadtkd@gmail.com",
      description:
          "The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. An advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life so you can go all day. It’s our most popular pro notebook, taken to a whole new level.",
      imageUrl:
          'https://www.apple.com/v/macbook-pro-13/k/images/overview/hero_endframe__bsza6x4fldiq_large.jpg', whatsappUrl: 'https://wa.me/87080863309?text=${Uri.parse("hello")}',
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
      whatsappUrl: 'https://wa.me/87080863309?text=${Uri.parse("hello")}',
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
          'https://opt-1102402.ssl.1c-bitrix-cdn.ru/upload/iblock/f0d/khotite_vernut_tovar_v_internet_magazin_1.jpg?1581065827116637', whatsappUrl: 'https://wa.me/87080863309?text=${Uri.parse("hello")}',
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
          'https://opt-1102402.ssl.1c-bitrix-cdn.ru/upload/iblock/f0d/khotite_vernut_tovar_v_internet_magazin_1.jpg?1581065827116637', whatsappUrl: 'https://wa.me/87080863309?text=${Uri.parse("hello")}',
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
          //  whatsappUrl: 'whatsapp://send?phone=87080863309&text=hello',
          whatsappUrl: 'https://wa.me/87080863309?text=${Uri.parse("hello")}'
    )
  ];

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

  final whatsAppUrl =
      'https://api.whatsapp.com/send?phone=77052353355&text=%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%21+%D0%A3+%D0%BC%D0%B5%D0%BD%D1%8F+%D0%B2%D0%BE%D0%B7%D0%BD%D0%B8%D0%BA%D0%BB%D0%B0+%D0%BF%D1%80%D0%BE%D0%B1%D0%BB%D0%B5%D0%BC%D0%B0+%D1%81&app_absent=0';
  late Future<void> _launched;
  Future<void> _launchInWebViewOrVC(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    // authService.signOut();
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.delivery_dining),
        backgroundColor: Color.fromARGB(255, 255, 24, 63),
      ),
      // body: SingleChildScrollView(
      //     child: ListView.separated(
      //   itemCount: cards.length,
      //   separatorBuilder: (_, __) => const Divider(),
      //   shrinkWrap: true,
      //   itemBuilder: (ctx, i) => ImageItem(
      //       cards[i].id, cards[i].title, cards[i].price, cards[i].imageUrl),
      // )),
      body: Container(
        child: Column(
          children: [
            // Container(
            //   height: 10,
            // ),
            Expanded(
                child: ListView.builder(
                    itemCount: cards.length,
                    itemBuilder: (BuildContext cnt, int i) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 350,
                        //width: 390,
                        child: Stack(
                          children: [
                            
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width * .955,
                                decoration: BoxDecoration(

                                color:Color.fromARGB(255, 255, 24, 63),
                                  borderRadius: BorderRadius.circular(25),
                                  
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                                        child: Text(
                                          
                                          "${cards[i].title}",
                                          // text
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                                        child: Text(
                                          "From ${cards[i].fromA} to ${cards[i].toB}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          // textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/profile-1589220274777-f30b37e96fe2image?dpr=2&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff'),
                  radius: 50,
                ),
                Text("\na.kenzhebek1643@gmail.com")
              ]),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 24, 63),
            ),
          ),
          Divider(
            height: 2,
          ),
          ListTile(
            title: Text(
              'CREATE POST',
            ),
            leading: Icon(
              Icons.post_add,
              color: Color.fromARGB(255, 225, 30, 63),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreatePost()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.announcement,
              color: Color.fromARGB(255, 225, 30, 63),
            ),
            title: Text('MY POSTS'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyPosts()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.support_agent,
              color: Color.fromARGB(255, 225, 30, 63),
            ),
            title: Text('SUPPORT'),
            onTap: () {
              //Navigator.pop(context);
              //_launched = _launchInWebViewOrVC(whatsAppUrl);
              openwhatsapp();
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Color.fromARGB(255, 255, 24, 63),
            ),
            title: Text('PROFILE'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 400),
            child: ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 225, 30, 63),
              ),
              title: Text(
                'EXIT',
              ),
              onTap: () {
                authService.signOut();
              },
            ),
          )
        ]),
      ),
    );
  }
}
