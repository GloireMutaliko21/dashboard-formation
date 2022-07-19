// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:formation_dashboard/constants.dart';
import 'package:formation_dashboard/pages/Ajouter_cours.dart';
import 'package:formation_dashboard/pages/Param%C3%A8tres.dart';
import 'package:formation_dashboard/pages/Home.dart';
import 'package:formation_dashboard/pages/Participants.dart';
import 'package:formation_dashboard/pages/Contacts.dart';

class LandingPage extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPage({super.key, required this.page, required this.extra});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

List<String> pages = [
  'home',
  'addCours',
  'participants',
  'contacts',
  'settings',
];
List<String> menus = [
  'Dashboard',
  'Ajouter cours',
  'Participants',
  'Contacts',
  'Paramètres',
];

List<IconData> icons = [
  Icons.home,
  Icons.library_books,
  Icons.supervised_user_circle_rounded,
  Icons.contact_phone_rounded,
  Icons.settings,
];

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Constants.purpleLight,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(Constants.kPadding * 2),
                  // height: double.infinity,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                      blurRadius: 10,
                    )
                  ], shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 30,
                    child: Image.asset("images/mapp.png"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Column(
                    children: icons.map((e) {
                      return NavItem(
                        icon: e,
                        selected:
                            icons.indexOf(e) == pages.indexOf(widget.page),
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/main/${pages[icons.indexOf(e)]}');
                        },
                        menu: (menus[icons.indexOf(e)]),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              color: Constants.purpleDark,
              child: Center(
                child: IndexedStack(
                  index: pages.indexOf(widget.page),
                  children: const [
                    Home(),
                    AboutPage(),
                    ProfilePage(),
                    SettingsPage(),
                    HelpPage(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final IconData icon;
  final String menu;
  final bool selected;
  final Function onTap;

  const NavItem(
      {Key? key,
      required this.icon,
      required this.menu,
      required this.selected,
      required this.onTap})
      : super(key: key);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 50.0,
                // margin: EdgeInsets.symmetric(vertical: 5),
                decoration: widget.selected
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 184, 72, 64)
                                .withOpacity(0.9),
                            const Color.fromARGB(255, 180, 110, 40)
                                .withOpacity(0.9),
                          ],
                        ),
                      )
                    : null,
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(widget.icon,
                          color: const Color.fromARGB(255, 19, 152, 185)),
                      Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            widget.menu,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ))
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
