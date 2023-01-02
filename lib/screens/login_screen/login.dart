import 'package:brew_crew/api/input_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //signing user method
  void signUserIn ()async{
    showDialog(context: context,
        builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text);
      Navigator.pop(context);
    }on FirebaseAuthException catch (e){
    //  pop the loading circular
      Navigator.pop(context);
    //  wrong email
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message){
    showDialog(context: context,
        builder: (context){
          return  AlertDialog(
              title: Text("Failed $message"));
    });
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
      title: const Text("Login"),
      leading: IconButton(
        onPressed: (){}, icon: const Icon(Icons.lock),
      ),
    );
  }
  _buildBody(){
    return Center(
      child:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            TextFieldInput(
                textEditingController: emailController,
                hintText: 'Enter Email',
                textInputType: TextInputType.emailAddress,
                maxLength: 24),
            const SizedBox(height: 20,),
            TextFieldInput(
                textEditingController: passwordController,
                hintText: 'Enter Password',
                textInputType: TextInputType.text,
                maxLength: 10),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: signUserIn, child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
