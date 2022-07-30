import 'package:flutter/material.dart';

import '../controller/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sign In",
                style: TextStyle(
                    fontSize: 43,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 204, 32, 32))),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Image.asset('assets/images/10.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                AuthService().signInWithGoogle();
              },
              label: const Text(
                'Sign in with google',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.grey[100],
              foregroundColor: Colors.black,
              icon: Image.asset(
                'assets/images/google.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
