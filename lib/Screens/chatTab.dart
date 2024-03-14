// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/Components/AlertPreviewTypes.dart';
import 'package:transmyt/Models/ChatPreview.dart';
import 'package:transmyt/screens/Contacts.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Contacts()));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 2.h),
          height:12.w,
          width: 12.w,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xff6925ad)),
          child: Icon(
            Icons.send_sharp,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
        body: ListView.separated(
            padding: EdgeInsets.only(
                top: 2.h, /* left:4.w, right: 4.w */),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: .7.h,
            );
          },

          // padding: EdgeInsets.symmetric(vertical: ),
          itemCount: chatPreviewsDemo.length,
          itemBuilder: (context, index) {
            return ChatAlertPreview(
              chatPreview: chatPreviewsDemo[index],
            );
          }),
    );
  }
}
