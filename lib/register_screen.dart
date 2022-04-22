import 'package:alypket/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 225, 30, 63),
        title: Text("Register"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
        InkWell(
          onTap: () async {
            await authService.CreateUserWithEmailAndPassword(
                emailController.text, passwordController.text);
            Navigator.pop(context);
          },
          child: new Container(
            //width: 100.0,
            height: 50.0,
            decoration: new BoxDecoration(
              color: Colors.red,
              border: new Border.all(color: Colors.white, width: 2.0),
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: new Center(
              child: new Text(
                'Register',
                style: new TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
