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
      body: Column(
        children: [
          const SizedBox(height: 11),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Stack(children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromARGB(255, 161, 13, 15),
                              Color.fromARGB(255, 210, 25, 25),
                              Color.fromARGB(255, 245, 66, 66),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(8.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 14),
                      ),
                      onPressed: () {},
                      child: const Text('Upload image'),
                    ),
                  ])),
            ),
          ),
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Text(
              //'${widget.translations.getTranslation(widget.localeId, 'name')}',
              'Product title',
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
                      color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
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
                hintStyle: const TextStyle(fontSize: 16.0, color: Colors.black),
                filled: true,
                fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Text(
              //'${widget.translations.getTranslation(widget.localeId, 'name')}',
              'Product description',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              //controller: nameController,
              onChanged: (value) {},
              maxLines: 4,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                // hintText: widget.user.name,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
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
                hintStyle: const TextStyle(fontSize: 16.0, color: Colors.black),
                filled: true,
                fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Text(
              //'${widget.translations.getTranslation(widget.localeId, 'name')}',
              'From A',
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
                      color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
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
                hintStyle: const TextStyle(fontSize: 16.0, color: Colors.black),
                filled: true,
                fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Text(
              //'${widget.translations.getTranslation(widget.localeId, 'name')}',
              'to B location',
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
                      color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
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
                hintStyle: const TextStyle(fontSize: 16.0, color: Colors.black),
                filled: true,
                fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Text(
              //'${widget.translations.getTranslation(widget.localeId, 'name')}',
              'Contact',
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
                      color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
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
                hintStyle: const TextStyle(fontSize: 16.0, color: Colors.black),
                filled: true,
                fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              //'${widget.translations.getTranslation(widget.localeId, 'name')}',
              'Price',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: TextField(
              onChanged: (value) {},
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
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
                hintStyle: const TextStyle(fontSize: 16.0, color: Colors.black),
                filled: true,
                fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: new InkWell(
                onTap: () => print('hello'),
                child: new Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 245, 66, 66),
                        Color.fromARGB(255, 210, 25, 25),
                        Color.fromARGB(255, 161, 13, 15),
                      ],
                    ),
                    border: new Border.all(color: Colors.white, width: 2.0),
                    borderRadius: new BorderRadius.circular(15.0),
                  ),
                  child: new Center(
                    child: new Text(
                      'Create Post',
                      style: new TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}