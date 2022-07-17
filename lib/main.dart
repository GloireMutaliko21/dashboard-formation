import 'package:flutter/material.dart';
import 'package:formation_dashboard/routes/Routes.dart';

import 'constants.dart';

void main() {
  runApp(const Formation());
}

class Formation extends StatefulWidget {
  const Formation({Key? key}) : super(key: key);

  @override
  State<Formation> createState() => _FormationState();
}

class _FormationState extends State<Formation> {
  @override
  void initState() {
    super.initState();
    Flurorouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
          scaffoldBackgroundColor: Constants.purpleDark,
          primarySwatch: Colors.blue,
          canvasColor: Constants.purpleLight),
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
