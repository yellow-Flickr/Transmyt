// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/Screens/Calls_Tab.dart';
import 'package:transmyt/Screens/Chat_Tab.dart';
import 'package:transmyt/Screens/Group_Tab.dart';
import 'package:transmyt/Screens/Status_Tab.dart';

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
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Color(0xff6925ad),
          leadingWidth: 80,
          // toolbarHeight: height * 0.1,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffad6925),
                  child: Icon(
                    Icons.person,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            ),
          ),
          centerTitle: false,
          titleSpacing: 0.0,
          title: Text.rich(TextSpan(
              text: "Hi, Jessica",
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 17,
                  fontWeight: FontWeight.bold))),
          actions: [
            Icon(
              Icons.search,
              size: 25,
              color: Color(0xffffffff),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.pending,
                size: 25,
                color: Color(0xffffffff),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(5.h),
            child: TabBar(
              // padding: EdgeInsets.only(right: 50),
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              indicatorPadding:
                  EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
              tabs: [
                Tab(
                  child: Text("Chats",
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ),
                Tab(
                  child: Text("Group",
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ),
                Tab(
                  child: Text("Status",
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ),
                Tab(
                  child: Text("Call",
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ),
              ],
              indicatorColor: Colors.white,
            ),
          ),
        ),
        body: TabBarView(
            children: [ChatTab(), GroupTab(), StatusTab(), CallsTab()]),
      ),
    );
  }
}
