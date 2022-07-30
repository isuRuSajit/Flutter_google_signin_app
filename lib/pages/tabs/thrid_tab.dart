import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../controller/auth_service.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Profile',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage:
                  NetworkImage(FirebaseAuth.instance.currentUser!.photoURL!),
            ),
             const SizedBox(
              height: 10,
            ),
            Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              FirebaseAuth.instance.currentUser!.email!,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
            ),
            const SizedBox(
              height: 40,
            ),
            MaterialButton(
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: const Text(
                'LOG OUT',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () {
                AuthService().signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
