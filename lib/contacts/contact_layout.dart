import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formation_dashboard/constants.dart';
import 'package:formation_dashboard/contacts/contacts.dart';

import 'formContact.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.purpleDark,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contactez-nous',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            const Divider(
              color: Colors.white,
              thickness: 0.1,
            ),
            const SizedBox(height: 10),
            const Text(
              "Nous fournissons des formations en ligne comme en présentiel",
              style: TextStyle(color: Constants.orange, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Constants.purpleLight,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: formContact(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 0.1,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: ContactsAdds(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.facebook),
                          onPressed: () {},
                          color: Colors.blue.shade800,
                        ),
                        const Text('Page Facebook',
                            style: TextStyle(
                                color: Color.fromARGB(246, 151, 150, 150))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.twitter),
                          onPressed: () {},
                          color: const Color.fromARGB(255, 29, 115, 185),
                        ),
                        const Text('Twitter',
                            style: TextStyle(
                                color: Color.fromARGB(246, 151, 150, 150))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.instagram),
                          color: const Color.fromARGB(255, 236, 71, 162),
                          onPressed: () {},
                        ),
                        const Text('Instagram',
                            style: TextStyle(
                                color: Color.fromARGB(246, 151, 150, 150))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.whatsapp),
                          color: const Color.fromARGB(255, 19, 179, 157),
                          onPressed: () {},
                        ),
                        const Text('WhatsApp',
                            style: TextStyle(
                                color: Color.fromARGB(246, 151, 150, 150))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.linkedin),
                          color: const Color.fromARGB(255, 28, 30, 170),
                          onPressed: () {},
                        ),
                        const Text('LinkedIn',
                            style: TextStyle(
                                color: Color.fromARGB(246, 151, 150, 150))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 0.1,
            ),
            const Center(
              child: ListTile(
                leading: Icon(Icons.copyright_rounded,
                    color: Color.fromARGB(255, 255, 224, 130)),
                title: Text('Tous droits réservés',
                    style:
                        TextStyle(color: Color.fromARGB(246, 151, 150, 150))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
