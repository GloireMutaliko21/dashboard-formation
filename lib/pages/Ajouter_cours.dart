// ignore_for_file: file_names

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:formation_dashboard/cours/ajouterDocument.dart';
import 'package:formation_dashboard/cours/descriptionCours.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [AjouterDocument(), DescriptionCours()],
      ),
    );
  }
}
