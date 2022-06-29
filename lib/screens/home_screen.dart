import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phone_auth/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  final User? user;

  HomeScreen({this.user});

  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "You are Logged in succesfully",
              style: TextStyle(color: Colors.lightBlue, fontSize: 32),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "${user!.phoneNumber}",
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            // ElevatedButton(
            //   onPressed: signOut,
            //   child: const Text("Logout"),
            // )
          ],
        ),
      ),
    );
  }
}
