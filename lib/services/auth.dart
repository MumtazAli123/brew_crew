import 'package:brew_crew/home_page.dart';
import 'package:brew_crew/screens/login_screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder <User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
        //  if user login in
          if (snapshot.hasData){
            return const MyHomePage();
          } else {
            return const LoginScreen();
          }

        //  if user not login in
        },
      ),
    );
  }
}
