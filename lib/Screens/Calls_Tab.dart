// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/Components/AlertPreviewTypes.dart';
import 'package:transmyt/Models/ChatPreview.dart';
import 'package:transmyt/Screens/CallContacts.dart';

class CallsTab extends StatefulWidget {
  const CallsTab({Key? key}) : super(key: key);

  @override
  _CallsTabState createState() => _CallsTabState();
}

class _CallsTabState extends State<CallsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CallContacts()));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 2.h),
          height: 12.w,
          width: 12.w,
          child: Icon(
            Icons.add_ic_call,
            color: Colors.white,
            size: 15,
          ),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xff6925ad)),
        ),
      ),
      body: ListView.separated(
          padding: EdgeInsets.only(
            top: 2.h,
          ),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: .7.w,
            );
          },

          // padding: EdgeInsets.symmetric(vertical: ),
          itemCount: callPreviewsDemo.length,
          itemBuilder: (context, index) {
            return CallAlertPreview(
              callPreview: callPreviewsDemo[index],
            );
          }),
    );
  }
}
