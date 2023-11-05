import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  googleLogin() async {
    print("googleLogin method Called");
    final _googleSignIn = GoogleSignIn();
    var result = await _googleSignIn.signIn();
    print("Result $result");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result.toString())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('google Sign in')
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            googleLogin();
          },
          child: Text(
            'sign in'
          ),
        ),
      ),
    );
  }
}
