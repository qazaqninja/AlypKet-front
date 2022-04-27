import 'package:alypket/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget{
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: "Password"),
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
        ElevatedButton(
          style: ButtonStyle(backgroundColor:  MaterialStateProperty.resolveWith((states) => Color.fromARGB(255, 255, 24, 63))),
          onPressed: () async{
          await authService.CreateUserWithEmailAndPassword(emailController.text, passwordController.text);
          Navigator.pop(context);
        }, child: Text("Register"))
        ]),
    );
  }

}