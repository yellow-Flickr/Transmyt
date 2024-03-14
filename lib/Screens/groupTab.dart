// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/Components/AlertPreviewTypes.dart';
import 'package:transmyt/Models/ChatPreview.dart';

class GroupTab extends StatefulWidget {
  const GroupTab({Key? key}) : super(key: key);

  @override
  _GroupTabState createState() => _GroupTabState();
}

class _GroupTabState extends State<GroupTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => CallContacts()));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 2.h),
          height: 12.w,
          width: 12.w,
          child: Icon(
            Icons.group_add_sharp,
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
              height: .7.h,
            );
          },

          // padding: EdgeInsets.symmetric(vertical: ),
          itemCount: groupPreviewsDemo.length,
          itemBuilder: (context, index) {
            return GroupAlertPreview(
              groupPreview: groupPreviewsDemo[index],
            );
          }),
    );
  }
}
