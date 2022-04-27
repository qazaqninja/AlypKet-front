import 'package:flutter/material.dart';

import '../models/image_card.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 24, 63),
        title: Text(
          'Profile',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [],
      ),
      body: Column(

        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 25,),
                  Center(
                    child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/profile-1589220274777-f30b37e96fe2image?dpr=2&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff'),
                    radius: 100,
                                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 6, left: 18),
                    child: Text("Email"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    child: TextField(
                      readOnly: true,
                      controller: nameController,

                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "a.kenzhebek1643@gmail.com",
                        contentPadding: EdgeInsets.all(13),
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        hintStyle: const TextStyle(
                            fontSize: 16.0, color: Colors.black),
                        filled: true,
                        fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 6, left: 18),
                    child: Text("Name"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    child: TextField(
                      readOnly: true,
                      controller: nameController,

                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Angsagan Kenzhebek",
                        contentPadding: EdgeInsets.all(13),
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        hintStyle: const TextStyle(
                            fontSize: 16.0, color: Colors.black),
                        filled: true,
                        fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
                      ),
                    ),
                  ),
                  // phone
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 8, bottom: 2),
                    child: Text("Phone"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "87080863309",
                        contentPadding: EdgeInsets.all(13),
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        hintStyle: const TextStyle(
                            fontSize: 16.0, color: Colors.black),
                        filled: true,
                        fillColor: const Color.fromRGBO(169, 168, 168, 0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
