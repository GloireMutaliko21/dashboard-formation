// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive_layout.dart';

List<String> _buttonNames = [
  "Overview",
  "Terminés",
  "En attente",
  "Non suivis"
];
int _currentSelectedButton = 0;

// ignore: use_key_in_widget_constructors
class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.purpleLight,
      child: Row(
        children: [
          if (ResponsiveLayout.isComputer(context))
            Container(
                //
                )
          else
            IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          const SizedBox(width: Constants.kPadding),
          if (ResponsiveLayout.isComputer(context))
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: const BorderSide(color: Colors.white, width: 0.4)),
              child: const Padding(
                padding: EdgeInsets.all(Constants.kPadding / 2),
                child: Text("Formations"),
              ),
            ),
          const Spacer(),
          if (ResponsiveLayout.isComputer(context))
            ...List.generate(
              _buttonNames.length,
              (index) => TextButton(
                onPressed: () {
                  setState(() {
                    _currentSelectedButton = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(Constants.kPadding * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _buttonNames[index],
                        style: TextStyle(
                          color: _currentSelectedButton == index
                              ? Colors.white
                              : Colors.white70,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(Constants.kPadding / 2),
                        width: 60,
                        height: 2,
                        decoration: BoxDecoration(
                          gradient: _currentSelectedButton == index
                              ? const LinearGradient(
                                  colors: [
                                    Constants.red,
                                    Constants.orange,
                                  ],
                                )
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.all(Constants.kPadding * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _buttonNames[_currentSelectedButton],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(Constants.kPadding / 2),
                    width: 60,
                    height: 2,
                    decoration: const BoxDecoration(
                      gradient:  LinearGradient(
                        colors: [
                          Constants.red,
                          Constants.orange,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          const Spacer(),
          IconButton(
            color: Colors.white,
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          Stack(
            children: [
              IconButton(
                color: Colors.white,
                iconSize: 30,
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined),
              ),
              const Positioned(
                right: 6,
                top: 6,
                child: CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 8,
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          if (!ResponsiveLayout.isPhone(context))
            Container(
              margin: const EdgeInsets.all(Constants.kPadding),
              height: double.infinity,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                  blurRadius: 10,
                )
              ], shape: BoxShape.circle),
              child: const CircleAvatar(
                backgroundColor: Constants.orange,
                radius: 30,
                backgroundImage: AssetImage(
                  "images/profile.png",
                ),
              ),
            ),
        ],
      ),
    );
  }
}
