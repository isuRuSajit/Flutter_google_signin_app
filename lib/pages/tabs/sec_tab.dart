import 'package:flutter/material.dart';

class SecTab extends StatelessWidget {
  const SecTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Cart',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      )
    ]);
  }
}
