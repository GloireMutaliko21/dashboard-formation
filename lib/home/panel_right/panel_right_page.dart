import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/charts.dart';

class Product {
  String name;
  bool enable;
  Product({this.enable = true, required this.name});
}

// ignore: use_key_in_widget_constructors
class PanelRightPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _PanelRightPageState createState() => _PanelRightPageState();
}

class _PanelRightPageState extends State<PanelRightPage> {
  // ignore: prefer_final_fields
  List<Product> _products = [
    Product(name: "LED Submersible Lights", enable: true),
    Product(name: "Portable Projector", enable: true),
    Product(name: "Bluetooth Speaker", enable: true),
    Product(name: "Smart Watch", enable: true),
    Product(name: "Temporary Tattoos", enable: true),
    Product(name: "Bookends", enable: true),
    Product(name: "Vegetable Chopper", enable: true),
    Product(name: "Neck Massager", enable: true),
    Product(name: "Facial Cleanser", enable: true),
    Product(name: "Back Cushion", enable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: Constants.kPadding / 2,
                  top: Constants.kPadding / 2,
                  left: Constants.kPadding / 2),
              child: Card(
                color: Constants.purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: double.infinity,
                  child: const ListTile(
                    //leading: Icon(Icons.monetization_on),
                    title: Text(
                      "Inscription, Participation, Réussite",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            LineChartSample1(),
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
                    _products.length,
                    (index) => SwitchListTile.adaptive(
                      title: Text(
                        _products[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      value: _products[index].enable,
                      onChanged: (newValue) {
                        setState(() {
                          _products[index].enable = newValue;
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
    );
  }
}
