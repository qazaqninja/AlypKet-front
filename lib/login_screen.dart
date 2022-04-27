import 'package:alypket/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Login"),
      backgroundColor: Color.fromARGB(255, 255, 24, 63),),
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
        ElevatedButton(
          style: ButtonStyle(backgroundColor:  MaterialStateProperty.resolveWith((states) => Color.fromARGB(255, 255, 24, 63))),
          onPressed: (){
          authService.signInWithEmailAndPassword(emailController.text, passwordController.text);
        }, child: Text("Login")),
        ElevatedButton(
          style: ButtonStyle(backgroundColor:  MaterialStateProperty.resolveWith((states) => Color.fromARGB(255, 255, 24, 63))),
          onPressed: (){
          Navigator.pushNamed(context,"/register");
        }, child: Text("Register"))
      ]),
    );
  }
}
