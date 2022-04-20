import 'package:alypket/home_screen.dart';
import 'package:alypket/login_screen.dart';
import 'package:alypket/services/auth_service.dart';
import 'package:alypket/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? LoginScreen() : HomeScreen();
          } else {
            return Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          
        });
  }
}
