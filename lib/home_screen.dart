import 'package:alypket/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(child: Text("AlypKet")),
        Center(
          child: ElevatedButton(
              onPressed: () async {
                await authService.signOut();
              },
              child: Text("Logout")),
        )
      ],
    ));
  }
}
