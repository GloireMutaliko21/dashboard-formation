import 'dart:ui';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:formation_dashboard/constants.dart';
import 'package:formation_dashboard/models/Participants.dart';

class ParticipantsTable extends StatelessWidget {
  const ParticipantsTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.amber.withOpacity(.4), width: .5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const Text(
              "Liste de participants",
              style: TextStyle(color: Color.fromARGB(255, 200, 200, 207)),
            ),
          ),
          Expanded(
            child: DataTable2(
              decoration: const BoxDecoration(
                  color: Constants.purpleLight,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              border: const TableBorder(
                  horizontalInside: BorderSide(width: .5, color: Colors.blue)),
              headingTextStyle:
                  const TextStyle(color: Color.fromARGB(255, 45, 177, 177)),
              dataTextStyle:
                  const TextStyle(color: Color.fromARGB(255, 212, 206, 206)),
              // minWidth: 600,
              horizontalMargin: 12,
              columns: const [
                DataColumn2(label: Text("Noms"), size: ColumnSize.S),
                DataColumn2(label: Text("Date"), size: ColumnSize.S),
                DataColumn2(label: Text("Grade"), size: ColumnSize.L),
              ],
              rows: List.generate(
                demoParticipants.length,
                (index) => recentFileDataRow(demoParticipants[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(Participants fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(fileInfo.nom!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.grade!)),
    ],
  );
}
