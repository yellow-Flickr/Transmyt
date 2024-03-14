// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/screens/callsTab.dart';

import 'package:transmyt/screens/chatTab.dart';
import 'package:transmyt/screens/groupTab.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          title: Row(
            textBaseline: TextBaseline.alphabetic,
            children: [
              Container(
                width: 8.w,
                height: 8.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(
                  Icons.person_rounded,
                  color: Color(0xff6925ad),
                  size: 15,
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              Text("Hi, Jessica",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 15,
                      fontWeight: FontWeight.bold))
            ],
          ),
          actions: [
            Icon(
              Icons.search,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.pending,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(2.h),
            child: TabBar(
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              tabs: [
                Tab(
                  child: Text(
                    "Chats",
                  ),
                ),
                Tab(
                  child: Text(
                    "Group",
                  ),
                ),
                Tab(
                  child: Text(
                    "Call",
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [ChatTab(), GroupTab(), CallsTab()]),
      ),
    );
  }
}
