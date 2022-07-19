// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive_layout.dart';
import '../../widgets/charts.dart';

class Todo {
  String name;
  bool enable;
  Todo({this.enable = true, required this.name});
}

class PanelLeftPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _PanelLeftPageState createState() => _PanelLeftPageState();
}

class _PanelLeftPageState extends State<PanelLeftPage> {
  // ignore: prefer_final_fields
  List<Todo> _todos = [
    Todo(name: "Purchase Paper", enable: true),
    Todo(name: "Refill the inventory of speakers", enable: true),
    Todo(name: "Hire someone", enable: true),
    Todo(name: "Maketing Strategy", enable: true),
    Todo(name: "Selling furniture", enable: true),
    Todo(name: "Finish the disclosure", enable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (ResponsiveLayout.isComputer(context))
            Container(
              color: Constants.purpleLight,
              width: 50,
              child: Container(
                decoration: const BoxDecoration(
                  color: Constants.purpleDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),
          SingleChildScrollView(
            primary: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: Constants.kPadding / 2,
                      top: Constants.kPadding / 2,
                      right: Constants.kPadding / 2),
                  child: Card(
                    color: Constants.purpleLight,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      width: double.infinity,
                      child: const ListTile(
                        //leading: Icon(Icons.shopping_basket),
                        title: Text(
                          "Progression des cours",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "78% de cours prévus",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Chip(
                          label: Text(
                            "10",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                LineChartSample2(),
                PieChartSample2(),
                Padding(
                  padding: const EdgeInsets.only(
                      right: Constants.kPadding / 2,
                      bottom: Constants.kPadding,
                      top: Constants.kPadding,
                      left: Constants.kPadding / 2),
                  child: Card(
                    color: Constants.purpleLight,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: List.generate(
                        _todos.length,
                        (index) => CheckboxListTile(
                          title: Text(
                            _todos[index].name,
                            style: const TextStyle(color: Colors.white),
                          ),
                          value: _todos[index].enable,
                          onChanged: (newValue) {
                            setState(() {
                              _todos[index].enable = newValue ?? true;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
