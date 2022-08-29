// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class RawContactCard extends StatelessWidget {
  const RawContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: height * 0.11,
      // padding: EdgeInsets.symmetric(horizontal: width * 0.015),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: const Offset(-5, -5),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.grey[500]!,
              offset: const Offset(5, 5),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
          ]),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // tileColor: Colors.grey[500],
        leading: FittedBox(
          child: Stack(children: [
            CircleAvatar(
              radius: 27,
              backgroundColor:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],

              // foregroundImage: NetworkImage(widget.callPreview.image),
              // onForegroundImageError: (exception, stackTrace) {
              //   setState(() {
              //     initials = widget.callPreview.name[0] +
              //         widget.callPreview.name[1];
              //   });
              // },
              // backgroundImage: ,
              child: Icon(
                Icons.person_outline_rounded,
                size: 30,
              ),
            ),
          ]),
        ),
        title: Text(
          "Albus Dumbledore",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              overflow: TextOverflow.ellipsis,
              color: Colors.grey.shade800),
        ),
        subtitle: Text(
          "Hi there! I am available on Transmyt",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade500,
              overflow: TextOverflow.ellipsis,
              fontSize: 15),
        ),
      ),
    );
  }
}

class InvitationContactCard extends StatelessWidget {
  const InvitationContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        // height: height * 0.11,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02, vertical: height * 0.015),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(-5, -5),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.grey[500]!,
                offset: const Offset(5, 5),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
            ]),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  // foregroundImage: NetworkImage(widget.chatPreview.image),
                  // onForegroundImageError: (exception, stackTrace) {
                  //   setState(() {
                  //     initials = widget.chatPreview.name[0] +
                  //         widget.chatPreview.name[1];
                  //   });
                  // },
                  child: Icon(
                    Icons.person_outline_rounded,
                    size: 25,
                  ),
                ),
                // Positioned(
                //   left: 40,
                //   top: 25,
                //   child: Container(
                //     height: 50,
                //     width: 20,
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Colors.grey[300]!, width: 4),
                //         color: Colors.grey,
                //         shape: BoxShape.circle),
                //   ),
                // )
              ]),
              // SizedBox(
              //   width: width * 0.01,
              // ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.005, left: width * 0.03),
                  child: Text(
                    "Albus Dumbledore",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.grey.shade800),
                  ),
                ),
              ),
              Container(
                height: height * 0.05,
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.01),
                child: Center(
                  child: Text(
                    "Invite",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff6925ad),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20),
                    )),
              )
            ],
          ),
        ));
  }
}

class GroupAddCard extends StatefulWidget {
  const GroupAddCard({Key? key}) : super(key: key);

  @override
  _GroupAddCardState createState() => _GroupAddCardState();
}

class _GroupAddCardState extends State<GroupAddCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: height * 0.11,
      padding: EdgeInsets.all(width * 0.02),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: const Offset(-5, -5),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.grey[500]!,
              offset: const Offset(5, 5),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
          ]),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // tileColor: Colors.grey[500],
        leading: FittedBox(
          child: Stack(children: [
            CircleAvatar(
              radius: 27,
              backgroundColor:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],

              // foregroundImage: NetworkImage(widget.callPreview.image),
              // onForegroundImageError: (exception, stackTrace) {
              //   setState(() {
              //     initials = widget.callPreview.name[0] +
              //         widget.callPreview.name[1];
              //   });
              // },
              // backgroundImage: ,
              child: Icon(
                Icons.person_outline_rounded,
                size: 25,
              ),
            ),
            // Positioned(
            //   left: 35,
            //   top: 30,
            //   child: Container(
            //     height: 25,
            //     width: 15,
            //     decoration: BoxDecoration(
            //         border: Border.all(color: Colors.grey[300]!, width: 2),
            //         color:
            //             /* widget.callPreview.isActive
            //                   ? Colors.cyan
            //                   :  */
            //             Colors.grey,
            //         shape: BoxShape.circle),
            //   ),
            // )
          ]),
        ),
        title: Text(
          "Albus Dumbledore",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              overflow: TextOverflow.ellipsis,
              color: Colors.grey.shade800),
        ),

        trailing: Container(
          height: height * 0.07,
          width: width * 0.07,
          // color: Colors.green,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey[600]!.withOpacity(0.5), width: 1),
              color: Colors.white.withOpacity(0.5),
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class CallAddCard extends StatelessWidget {
  final String initials;
  const CallAddCard({Key? key, required this.initials}) : super(key: key);

  // CallAddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: height * 0.11,
      // padding: EdgeInsets.symmetric(horizontal: width * 0.015),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: const Offset(-5, -5),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.grey[500]!,
              offset: const Offset(5, 5),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
          ]),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // tileColor: Colors.grey[500],
        leading: FittedBox(
          child: Stack(children: [
            CircleAvatar(
              radius: 22,
              backgroundColor:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],

              // foregroundImage: NetworkImage(widget.callPreview.image),
              // onForegroundImageError: (exception, stackTrace) {
              //   setState(() {
              //     initials = widget.callPreview.name[0] +
              //         widget.callPreview.name[1];
              //   });
              // },
              // backgroundImage: ,
              child: Visibility(
                visible: initials.isNotEmpty,
                child: Text(
                  initials.toUpperCase(),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            // Positioned(
            //   left: 35,
            //   top: 30,
            //   child: Container(
            //     height: 25,
            //     width: 15,
            //     decoration: BoxDecoration(
            //         border: Border.all(color: Colors.grey[300]!, width: 2),
            //         color:
            //             /* widget.callPreview.isActive
            //                   ? Colors.cyan
            //                   :  */
            //             Colors.grey,
            //         shape: BoxShape.circle),
            //   ),
            // )
          ]),
        ),
        title: Text(
          "Albus Dumbledore",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              overflow: TextOverflow.ellipsis,
              color: Colors.grey.shade800),
        ),
        subtitle: Text(
          "Hi there! I am available on Transmyt",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade500,
              overflow: TextOverflow.ellipsis,
              fontSize: 12),
        ),
        trailing: FittedBox(
          child: Row(
            children: [
              Icon(
                Icons.videocam,
                color: Colors.grey,
                size: 30,
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Icon(
                Icons.phone,
                color: Colors.grey,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
