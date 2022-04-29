import 'package:alypket/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 24, 63),
        title: Text("Register"),
      ),
      body: Column(
        
        children: [
        
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 8, bottom: 2),
          child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(13),
              hintText: '',
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
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 8, bottom: 2),
          child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Password",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: TextField(
            controller: passwordController,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(13),
              hintText: '',
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
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 8, bottom: 2),
          child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          child: TextField(
            controller: nameController,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(13),
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
        // phone
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 8, bottom: 2),
          child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Phone",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(13),
              hintText: '',
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
        
        Spacer(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 30),
            child: InkWell(
              onTap: () async {
                    await authService.CreateUserWithEmailAndPassword(
                        emailController.text, passwordController.text);
                    Navigator.pop(context);
                  },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:65,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 24, 63),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                ),),
                child: Center(
                  child: Text("Register",
                    style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.w800),),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
