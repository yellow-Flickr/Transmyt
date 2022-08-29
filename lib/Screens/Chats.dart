// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:transmyt/Components/ChatBubbleTypes.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  TextEditingController msg = TextEditingController();
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
          leadingWidth: 50,
          titleSpacing: 0.0,
          toolbarHeight: height * 0.1,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffad6925),
                  child: Icon(
                    Icons.person,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Text(
                "Iron Stark",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.videocam,
                size: 33,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.phone,
                size: 33,
              ),
            )
          ],
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              // color: Colors.transparent,
              color: Colors.grey[300],
              image: DecorationImage(
                  // colorFilter: ColorFilter.,
                  fit: BoxFit.cover,
                  image: AssetImage('vector/matrix.png')),
            ),
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.only(
                top: height * 0.03,
                left: width * 0.02,
                right: width * 0.02,
                bottom: height * 0.05),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ReceipientBubble(),
                SizedBox(
                  height: height * 0.03,
                ),
                SenderBubble(),
                SizedBox(
                  height: height * 0.03,
                ),
                Stack(children: [
                  Center(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Center(
                    heightFactor: 0.5,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      // color: Colors.grey[400],
                      height: height * 0.04,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          // border: Border.all(color: Color),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Today",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: height * 0.03,
                ),
                GroupReceipient(),
              ],
            ),
          ),
          Positioned(
              bottom: 5,
              left: 20,
              child: Container(
                width: width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Color(0xff6925ad),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: TextFormField(
                  // obscureText: obscure,
                  maxLines: 5,
                  minLines: 1,

                  // keyboardType: keyboard,
                  controller: msg,
                  // textAlign: textAlign,
                  // style: style,
                  decoration: InputDecoration(
                    hintText: "Type your message",
                    // hintStyle: TextStyle(color: hintColor),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.attach_file_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.camera_alt_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff6925ad)),
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
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
              ))
        ]));
  }
}

class Bubble extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.2487500, size.height * 0.5000000);
    path1.quadraticBezierTo(size.width * 0.2687500, size.height * 0.3320000,
        size.width * 0.3737500, size.height * 0.3000000);
    path1.lineTo(size.width * 0.6862500, size.height * 0.3000000);
    path1.lineTo(size.width * 0.7212500, size.height * 0.2980000);
    path1.quadraticBezierTo(size.width * 0.7218750, size.height * 0.4450000,
        size.width * 0.7212500, size.height * 0.5000000);
    path1.quadraticBezierTo(size.width * 0.7200000, size.height * 0.6425000,
        size.width * 0.6262500, size.height * 0.7020000);
    path1.lineTo(size.width * 0.3762500, size.height * 0.7000000);
    path1.quadraticBezierTo(size.width * 0.2693750, size.height * 0.6485000,
        size.width * 0.2487500, size.height * 0.5000000);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
