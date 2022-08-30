// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          // backgroundColor: Color(0xff25ad69),
          backgroundColor: Color(0xff6925ad),

          // flexibleSpace:
          // CustomPaint(
          //     size: Size(width, (height * 0.7 /* width * 0.625 */).toDouble()),
          //     painter: RPSCustomPainter(),
          //   ),
          // shape: ShapeBorder.lerp(a, b, t),
          leadingWidth: 80,
          toolbarHeight: height * 0.1,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: width * 0.04),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffad6925),
                  child: Icon(
                    Icons.person,
                    color: Color(0xffffffff),
                  ),
                ),
                // SizedBox(
                //   width: width * 0.04,
                // ),
                // Text.rich(TextSpan(
                //     text: "Hi, Jessica",
                //     style: TextStyle(
                //         color: Color(0xffffffff),
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold)))
              ],
            ),
          ),
          centerTitle: false,
          titleSpacing: 0.0,
          title: Text.rich(TextSpan(
              text: "Hi, Jessica",
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
          actions: [
            Icon(
              Icons.search,
              size: 35,
              color: Color(0xffffffff),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.pending,
                size: 35,
                color: Color(0xffffffff),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(height * 0.05),
            child: TabBar(
              // padding: EdgeInsets.only(right: 50),
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding:
                  EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
              tabs: [
                Icon(
                  Icons.camera_alt_rounded,
                  color: Color(0xffffffff),
                  size: 30,
                ),
                Tab(
                  child: Text("Chats",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
                Tab(
                  child: Text("Group",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
                Tab(
                  child: Text("Status",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
                Tab(
                  child: Text("Call",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
              indicatorColor: Colors.white,
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  opacity: 0.7,
                    fit: BoxFit.fitHeight,
                    image: AssetImage('vector/matrix2.png')),
              ),
              height: MediaQuery.of(context).size.height,
            ),
            // CustomPaint(
            //   size: Size(width, (height * 0.40 /* width * 0.625 */).toDouble()),
            //   painter: RPSCustomPainter(),
            // ),
            SizedBox(
                height: height,
                child: TabBarView(children: [
                  Container(),
                  ChatTab(),
                  GroupTab(),
                  StatusTab(),
                  CallsTab()
                ])

                // SingleChildScrollView(
                //   padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [

                //     ],
                //   ),
                // ),
                ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color(0xff25ad69)
      ..style = PaintingStyle.fill
      ..strokeWidth = 9.85;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1237500, size.height * 0.4020000);
    path0.lineTo(size.width * 0.8737500, size.height * 0.4020000);
    path0.quadraticBezierTo(size.width * 1.0021875, size.height * 0.3850000,
        size.width, size.height * 0.1980000);
    path0.quadraticBezierTo(size.width, size.height * 0.1485000, size.width, 0);
    path0.lineTo(0, 0);
    path0.lineTo(0, size.height * 0.6000000);
    path0.quadraticBezierTo(size.width * -0.0087500, size.height * 0.3995000,
        size.width * 0.1237500, size.height * 0.4020000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
