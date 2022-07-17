import 'package:flutter/material.dart';

import 'textfield.dart';

class formContact extends StatelessWidget {
  const formContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
            height: 70,
            width: 400,
            child: TextFieldModel(
                hintText: 'Nom',
                icon: Icons.person,
                textInputType: TextInputType.name)),
        const SizedBox(height: 10),
        const SizedBox(
            height: 70,
            width: 400,
            child: TextFieldModel(
                hintText: 'Mail',
                icon: Icons.mail_rounded,
                textInputType: TextInputType.emailAddress)),
        const SizedBox(height: 10),
        const SizedBox(
            height: 120,
            width: 400,
            child: TextFieldModel(
              hintText: 'Votre message',
              icon: Icons.message_rounded,
              textInputType: TextInputType.text,
              maxLines: 10,
            )),
        const SizedBox(
          height: 10,
        ),
        MaterialButton(
          color: const Color.fromARGB(255, 202, 116, 30),
          onPressed: () {},
          child: const Text(
            'Envoyer',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        )
      ],
    );
  }
}
