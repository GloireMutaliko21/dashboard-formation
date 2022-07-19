// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: const Center(
          child: Text(
            'Paramètre Page',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
