// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:transmyt/Components/AlertPreviewTypes.dart';
import 'package:transmyt/Models/ChatPreview.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
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
        itemCount: chatPreviewsDemo.length,
        itemBuilder: (context, index) {
          return ChatAlertPreview(
            chatPreview: chatPreviewsDemo[index],
          );
        });
  }
}
