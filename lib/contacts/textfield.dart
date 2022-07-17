// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:formation_dashboard/constants.dart';
import 'package:formation_dashboard/contacts/textfield_container.dart';

class TextFieldModel extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final onChanged;
  final TextInputType textInputType;
  final controller;
  final inputFormatters;
  final maxLengt;
  final maxLines;
  const TextFieldModel(
      {Key? key,
      required this.hintText,
      required this.icon,
      this.onChanged,
      required this.textInputType,
      this.controller,
      this.inputFormatters,
      this.maxLengt,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintStyle: const TextStyle(color: Color.fromARGB(246, 151, 150, 150)),
          filled: true,
          counterText: '',
          icon: Icon(
            icon,
            color: Constants.orange,
          ),
          hintText: hintText,
          border: InputBorder.none),
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      maxLength: maxLengt,
      maxLines: maxLines,
    ));
  }
}
