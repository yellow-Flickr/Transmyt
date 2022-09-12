// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(     backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => CallContacts()));
        },
        child: Container(
          height: height * 0.1,
          width: width * 0.15,
          child: Icon(
            Icons.group_add_sharp,
            color: Colors.white,
            size: 24,
          ),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xff6925ad)),
        ),
      ),
      body: ListView.separated(
                      padding: EdgeInsets.only(top: height * 0.03, left:width * 0.04 ,right:width * 0.04 ),
    
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
    
          // padding: EdgeInsets.symmetric(vertical: ),
          itemCount: groupPreviewsDemo.length,
          itemBuilder: (context, index) {
            return GroupAlertPreview(groupPreview: groupPreviewsDemo[index],);
          }),
    );
  }
}
