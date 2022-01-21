// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:transmyt/Components/AlertPreviewTypes.dart';
import 'package:transmyt/Models/ChatPreview.dart';

class CallsTab extends StatefulWidget {
  const CallsTab({Key? key}) : super(key: key);

  @override
  _CallsTabState createState() => _CallsTabState();
}

class _CallsTabState extends State<CallsTab> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView.separated(
        padding: EdgeInsets.only(
            top: height * 0.03, left: width * 0.04, right: width * 0.04),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },

        // padding: EdgeInsets.symmetric(vertical: ),
        itemCount: callPreviewsDemo.length,
        itemBuilder: (context, index) {
          return CallAlertPreview(
            callPreview: callPreviewsDemo[index],
          );
        });
  }
}
