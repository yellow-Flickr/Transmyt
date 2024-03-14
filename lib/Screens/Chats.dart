// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/components/chatBubbles.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  TextEditingController msg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 8.w,
              height: 8.w,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.person,
                color: Color(0xff6925ad),
                size: 10,
              ),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "Iron Stark",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.videocam,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.phone,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(top: 3.h, left: 2.w, right: 2.w, bottom: 5.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ReceipientBubble(),
            SizedBox(
              height: 1.5.h,
            ),
            SenderBubble(),
            SizedBox(
              height: 1.5.h,
            ),
            Stack(alignment: Alignment.center, children: [
              Center(
                child: Divider(
                  thickness: .5,
                  color: Colors.grey.shade400,
                ),
              ),
              Container(
                alignment: Alignment.center,
                // color: Colors.grey[400],
                height: 2.h,
                width: 15.w,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    border: Border.all(color: Color(0xFFf5f5f5), width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Today",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 8),
                ),
              ),
            ]),
            SizedBox(
              height: 1.5.h,
            ),
            GroupReceipient(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 2,
              color: Color(0xff6925ad),
            ),
          ),
          color: Colors.white,
          // borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: TextFormField(
                maxLines: 5,
                minLines: 1,
                controller: msg,
                decoration: InputDecoration(
                  hintText: "Type your message",
                  // hintStyle: TextStyle(
                  //   fontSize: 11,
                  // ),
                  prefixIcon: Icon(Icons.emoji_emotions_outlined),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff6925ad)),
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
