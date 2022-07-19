// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:formation_dashboard/Participants/table_participants.dart';

import '../responsive_layout.dart';
import '../widgets/app_bar_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
      body: const ParticipantsTable(),
    );
  }
}
