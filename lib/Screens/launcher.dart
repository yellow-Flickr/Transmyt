// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transmyt/Screens/dashboard.dart';

class Launcher extends StatefulWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Dashboard()));
  }

  @override
  void initState() {
    super.initState();
    // registerCustomer();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff6925ad),
        body: Stack(
          children: [
            // Column(
            //   children: [
            //     Expanded(
            //         child: Image.asset(
            //       "vector/matrix.png",
            //       repeat: ImageRepeat.repeat,
            //     )),
            //   ],
            // ),

            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('vector/matrix.png')),
              ),
              height: MediaQuery.of(context).size.height,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.1,
                child: FittedBox(
                  child: RichText(
                    text: TextSpan(
                        text: "Trans",
                        style: GoogleFonts.sarina(
                            fontSize: 78, color: Color(0xffffffff)),
                        children: [
                          TextSpan(text: 'Myt', style: GoogleFonts.sarina())
                        ]),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xFF6925ad),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF8a30e3),
                        offset: const Offset(-11, 11),
                        blurRadius: 27.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Color(0xFF481a77),
                        offset: const Offset(11, -11),
                        blurRadius: 27.0,
                        spreadRadius: 1.0,
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}
