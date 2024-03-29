// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:transmyt/Components/ContactCard.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Color(0xff6925ad),
          elevation: 0,
          centerTitle: false,
          leadingWidth: 60,
          titleSpacing: 0.0,
          toolbarHeight: height * 0.07,
          title: ListTile(
              title: Text(
                "New Chat",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "204 Contacts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold
                ),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.search_outlined,
                size: 33,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.more_vert_outlined,
                size: 33,
              ),
            )
          ],
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('vector/matrix2.png')),
            ),
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            // reverse: true,
            padding: EdgeInsets.only(
                top: height * 0.015,
                left: width * 0.015,
                right: width * 0.015,
                bottom: height * 0.05),
            child: Column(
              children: [
                // SizedBox(
                //   height: 20,
                // ),
                // GroupAddCard(),
                CallAddCard(
                  initials: 'AD',
                ),
              ],
            ),
          ),
        ]));
  }
}
