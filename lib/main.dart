import 'package:alypket/login_screen.dart';
import 'package:alypket/register_screen.dart';
import 'package:alypket/services/auth_service.dart';
import 'package:alypket/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        )
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          initialRoute: '/',

          routes: {
            '/':(context)=>Wrapper(),
            '/login':(context) => LoginScreen(),
            '/register':(context) => RegisterScreen(),
          },
      )
    );
  }
}
