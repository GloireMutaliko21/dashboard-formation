import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:formation_dashboard/home/panel_center/panel_center_page.dart';
import 'package:formation_dashboard/home/panel_left/panel_left_page.dart';
import 'package:formation_dashboard/home/panel_right/panel_right_page.dart';

import '../constants.dart';
import '../responsive_layout.dart';
import '../widgets/app_bar_widget.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 1;

  final List<Widget> _icons = [
    const Icon(Icons.add, size: 30),
    const Icon(Icons.list, size: 30),
    const Icon(Icons.compare_arrows, size: 30),
  ];

  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: (ResponsiveLayout.isTinyLimit(context) ||
                ResponsiveLayout.isTinyHeightLimit(context))
            ? Container()
            : AppBarWidget(),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: currentIndex == 0
            ? PanelLeftPage()
            : currentIndex == 1
                ? PanelCenterPage()
                : PanelRightPage(),
        tablet: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(
              child: PanelCenterPage(),
            ),
            Expanded(child: PanelRightPage()),
          ],
        ),
        largeTablet: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
            Expanded(
              child: PanelRightPage(),
            )
          ],
        ),
        computer: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(
              child: PanelCenterPage(),
            ),
            Expanded(
              child: PanelRightPage(),
            ),
          ],
        ),
      ),
      // drawer: LandingPage(page: '', extra: ''),
      bottomNavigationBar: ResponsiveLayout.isPhone(context)
          ? CurvedNavigationBar(
              index: currentIndex,
              backgroundColor: Constants.purpleDark,
              items: _icons,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            )
          : const SizedBox(),
    );
  }
}
