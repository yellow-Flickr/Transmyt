// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/// App Splash Screen
/// Consist of a background color stacked on with a Doodle image stacked on with round edge container with text 'TransMyt' in font sarina
/// This screen is suspended for Duration in screenDelayTime() before redirecting to redirectToPage()*/

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
  //Screen delay function
  screenDelayTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, redirectToPage);
  }

  void redirectToPage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Dashboard()));
  }

  final ImageProvider imageAsset = const AssetImage('vector/matrix2.png');

  @override
  void initState() {
    super.initState();
    // registerCustomer();
    screenDelayTime();
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(imageAsset, context);
    return Scaffold(
        backgroundColor: Color(0xff6925ad), // Full Screen background color
        body: Stack(
          children: [
            // Column(
            //   children: [
            //     Expanded(
            //         child: Image.asset(
            //       "vector/matrix2.png",
            //       repeat: ImageRepeat.repeat,
            //     )),
            //   ],
            // ),

            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: imageAsset), // Full Screen Background image
              ),
              height: MediaQuery.of(context).size.height,
            ),

            // Round Edge Container with text TransMyt
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

                // Shadow effect for a neumorphic view
                decoration: BoxDecoration(
                    color: Color(0xFF6925ad),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF8a30e3),
                        offset: const Offset(-11, 11),
                        blurRadius: 27.0,
                        spreadRadius: 1.0,
                      ), //Bottom left corner shadow
                      BoxShadow(
                        color: Color(0xFF481a77),
                        offset: const Offset(11, -11),
                        blurRadius: 27.0,
                        spreadRadius: 1.0,
                      ), //Top right corner shadow
                    ]),
              ),
            ),
          ],
        ));
  }
}
