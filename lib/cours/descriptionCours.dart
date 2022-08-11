import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;
import 'package:formation_dashboard/constants.dart';
import 'package:tuple/tuple.dart';

class DescriptionCours extends StatefulWidget {
  const DescriptionCours({Key? key}) : super(key: key);

  @override
  State<DescriptionCours> createState() => _DescriptionCoursState();
}

QuillController _quillController = QuillController.basic();

class _DescriptionCoursState extends State<DescriptionCours> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 550,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber.withOpacity(.4), width: .5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: QuillToolbar.basic(
              controller: _quillController,
              iconTheme: const QuillIconTheme(
                  iconUnselectedColor: Color.fromARGB(255, 218, 215, 215),
                  disabledIconColor: Colors.grey,
                  iconSelectedColor: Colors.black),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border:
                  Border.all(color: Colors.amber.withOpacity(.4), width: .5),
              color: Constants.purpleLight,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              )),
          width: 550,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: QuillEditor(
              controller: _quillController,
              readOnly: false,
              autoFocus: true,
              expands: false,
              focusNode: FocusNode(),
              padding: const EdgeInsets.only(bottom: 8.0),
              scrollable: true,
              scrollController: ScrollController(),
              customStyles: DefaultStyles(
                  paragraph: DefaultTextBlockStyle(
                      const TextStyle().copyWith(
                          color: const Color.fromARGB(246, 151, 150, 150)),
                      const Tuple2(0, 0),
                      const Tuple2(0, 0),
                      null)),
            ),
          ),
        ),
      ],
    );
  }
}
