import 'package:blossom_2/screens/creat_new_account.dart';
import 'package:blossom_2/screens/forget_password.dart';
import 'package:blossom_2/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:blossom_2/screens/luncher.dart';
import 'package:blossom_2/screens/login_newUser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen' ,
      routes: {
        '/launch_screen': (context) => const Luncher(),
        '/login_newUser_screen': (context) => const LoginNewUserScreen(),
        '/login_screen':(context) =>const LoginScreen(),
        '/forget_password_screen':(context) =>const ForgetPasswordScreen(),
        '/creat_new_account_screen':(context) =>const CreateNewAccountScreen()

      },

    );
  }
}

