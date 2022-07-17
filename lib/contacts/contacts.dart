import 'package:flutter/material.dart';

class ContactsAdds extends StatelessWidget {
  const ContactsAdds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.mail_outline,
              color: Color.fromARGB(255, 255, 224, 130)),
          title: Text(
            'Email',
            style: TextStyle(color: Color.fromARGB(246, 151, 150, 150)),
          ),
          subtitle: Text('mufunyig@gmail.com',
              style: TextStyle(color: Color.fromARGB(246, 151, 150, 150))),
        ),
        SizedBox(
          height: 40,
        ),
        ListTile(
          leading: Icon(Icons.phone_callback_outlined,
              color: Color.fromARGB(255, 255, 224, 130)),
          title: Text(
            'Phone',
            style: TextStyle(color: Color.fromARGB(246, 151, 150, 150)),
          ),
          subtitle: Text('+243 970 987 018',
              style: TextStyle(color: Color.fromARGB(246, 151, 150, 150))),
        ),
        SizedBox(
          height: 40,
        ),
        ListTile(
          leading: Icon(Icons.home_work_outlined,
              color: Color.fromARGB(255, 255, 224, 130)),
          title: Text(
            'Adress',
            style: TextStyle(color: Color.fromARGB(246, 151, 150, 150)),
          ),
          subtitle: Text('345 Avevenue Géomètres, Katoyi, Goma',
              style: TextStyle(color: Color.fromARGB(246, 151, 150, 150))),
        ),
      ],
    );
  }
}
