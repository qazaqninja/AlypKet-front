import 'package:flutter/material.dart';

import '../models/image_card.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoxDecoration circleBorders = const BoxDecoration(
      color: Color(0xFFEEEDED),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 24, 63),
          title: Text("Profile"),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.898,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://a-static.besthdwallpaper.com/anime-devochka-i-babochki-oboi-2048x1536-26669_26.jpg'),
                    radius: 50,
                  ),
                ),
                // name
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  child: Text(
                    //'${widget.translations.getTranslation(widget.localeId, 'name')}',
                    'User Name',
                    // style: AppTextStyles.size13BlackText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    //controller: nameController,
                    onChanged: (value) {},
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      // hintText: widget.user.name,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(169, 168, 168, 0.2),
                            width: 0.0),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      filled: true,
                      fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
                    ),
                  ),
                ),
                // phone
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 16, bottom: 4),
                  child: Text(
                      //'${widget.translations.getTranslation(widget.localeId, 'phone')}',
                      'Phone'
                      //style: AppTextStyles.size13BlackText,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    //enabled: false,
                    // inputFormatters: [formatter],
                    // controller: phoneController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: '',
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(169, 168, 168, 0.2),
                            width: 0.0),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      filled: true,
                      fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  child: Text(
                    //'${widget.translations.getTranslation(widget.localeId, 'name')}',
                    'Email',
                    // style: AppTextStyles.size13BlackText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    //controller: nameController,
                    onChanged: (value) {},
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      // hintText: widget.user.name,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(169, 168, 168, 0.2),
                            width: 0.0),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      filled: true,
                      fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 16, bottom: 4),
                  child: Text(
                      // '${widget.translations.getTranslation(widget.localeId, 'personalPromoCode')}',
                      //style: AppTextStyles.size13BlackText,
                      'User Address '),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.81,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          child: TextField(
                            enabled: false,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              hintText: "share",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(169, 168, 168, 0.2),
                                    width: 0.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              hintStyle: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(169, 168, 168, 0.2),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: circleBorders,
                          child: Padding(
                            padding: EdgeInsets.all(19.0),
                            child: Icon(Icons.share_outlined),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 16, bottom: 4),
                  child: Text(
                      // '${widget.translations.getTranslation(widget.localeId, 'personalPromoCode')}',
                      //style: AppTextStyles.size13BlackText,
                      'Password '),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    //controller: nameController,
                    onChanged: (value) {},
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      // hintText: widget.user.name,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(169, 168, 168, 0.2),
                            width: 0.0),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      filled: true,
                      fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: new InkWell(
                      onTap: () => print('hello'),
                      child: new Container(
                        //width: 100.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          border:
                              new Border.all(color: Colors.white, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Upgrade',
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
