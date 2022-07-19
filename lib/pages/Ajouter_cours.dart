// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  
  const AboutPage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: const Center(
          child: Text(
            'Ajouter cours',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
