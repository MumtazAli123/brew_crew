import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final user = FirebaseAuth.instance.currentUser!;

  //sign out method
  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),

    );
  }
  _buildAppBar(){
    return AppBar(
      leading: IconButton(
        onPressed: signUserOut, icon: const Icon(Icons.logout),
      ),
      title: const Text("Home Page"),
    );
  }
  _buildBody(){
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Welcome '),
          // Text(' ${user.email!}'),
          Text(user.email!),
        ],
      ),
    );
  }
}
