import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 126, 141),
            ),
            accountName: Text(
              FirebaseAuth.instance.currentUser!.displayName!,
            ),
            accountEmail: Text(
              FirebaseAuth.instance.currentUser!.email!,
            ),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child:
                  Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
            )),
          )
        ],
      ),
    );
  }
}
