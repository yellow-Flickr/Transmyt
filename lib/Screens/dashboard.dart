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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          backgroundColor: Color(0xff6925ad),
          leadingWidth: 80,
          // toolbarHeight: height * 0.1,
          elevation: 0,
          // leading: Padding(
          //   padding: EdgeInsets.only(left: 4.w),
          //   child: Row(
          //     children: [
          //      Container(
          //       width: 10.w,
          //       height:10.w,
          //       decoration: BoxDecoration(
          //           color: Colors.white,

          //           borderRadius: BorderRadius.circular(10)),

          //       child: Icon(
          //         Icons.person_rounded,
          //         color: Color(0xff6925ad),
          //         size: 30,
          //       ),
          //     ),
          //     Text.rich(TextSpan(
          //     text: "Hi, Jessica",
          //     style: TextStyle(
          //         color: Color(0xffffffff),
          //         fontSize: 15,
          //         fontWeight: FontWeight.bold)))
          //     ],
          //   ),
          // ),
          centerTitle: false,
          // titleSpacing: 0.0,
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
              SizedBox(width: 1.w,),
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
              size: 15,
              color: Color(0xffffffff),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.pending,
                size: 15,
                color: Color(0xffffffff),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.h),
            child: TabBar(
              // padding: EdgeInsets.only(right: 50),
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              indicatorPadding:
                  EdgeInsets.symmetric(horizontal: 5,  ),
              // labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
              tabs: [
                Tab(
                  child: Text("Chats",
                      style: TextStyle(
                        fontSize: 13,
                      )),
                ),
                Tab(
                  child: Text("Group",
                      style: TextStyle(
                        fontSize: 13,
                      )),
                ),
                Tab(
                  child: Text("Status",
                      style: TextStyle(
                        fontSize: 13,
                      )),
                ),
                Tab(
                  child: Text("Call",
                      style: TextStyle(
                        fontSize: 13,
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
