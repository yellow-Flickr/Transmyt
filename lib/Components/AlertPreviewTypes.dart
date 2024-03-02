// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/Models/ChatPreview.dart';
import 'package:transmyt/Screens/Chats.dart';

class ChatAlertPreview extends StatefulWidget {
  ChatPreview chatPreview;

  ChatAlertPreview({Key? key, required this.chatPreview}) : super(key: key);

  @override
  _ChatAlertPreviewState createState() => _ChatAlertPreviewState();
}

class _ChatAlertPreviewState extends State<ChatAlertPreview> {
  String initials = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (builder) => Chats())),
      child: Container(
          // height: height * 0.11,
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 12.w,
                height:12.w,
                decoration: BoxDecoration(
                    color: Color(0xFF2492db),
              
                    borderRadius: BorderRadius.circular(10)),
                 
                child: Icon(
                  Icons.person_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              // SizedBox(
              //   width: width * 0.05,
              // ),
              Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              widget.chatPreview.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.grey.shade800),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              widget.chatPreview.time,
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Visibility(
                            visible: !(widget.chatPreview.msgStatus ==
                                    MessageStatus.read ||
                                widget.chatPreview.msgStatus ==
                                    MessageStatus.unread),
                            child: Icon(
                              widget.chatPreview.msgStatus == MessageStatus.sent
                                  ? Icons.done
                                  : widget.chatPreview.msgStatus ==
                                          MessageStatus.not_sent
                                      ? Icons.access_time_filled_rounded
                                      : Icons.done_all_rounded,
                              color: widget.chatPreview.msgStatus ==
                                      MessageStatus.viewed
                                  ? Colors.green
                                  : Colors.grey,
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Expanded(
                            child: Text(
                              widget.chatPreview.msgPreview,
                              style: TextStyle(
                                  color: (widget.chatPreview.msgStatus ==
                                              MessageStatus.read ||
                                          widget.chatPreview.msgStatus ==
                                              MessageStatus.unread)
                                      ? Colors.black
                                      : Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}

class GroupAlertPreview extends StatefulWidget {
  GroupPreview groupPreview;

  GroupAlertPreview({
    Key? key,
    required this.groupPreview,
  }) : super(key: key);
  @override
  _GroupAlertPreviewState createState() => _GroupAlertPreviewState();
}

class _GroupAlertPreviewState extends State<GroupAlertPreview> {
  String initials = "";
  final bgColor = Color.fromARGB(
      0, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));

  // final  gColor = Color.fromARGB(0, 0, 0, 90);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (builder) => Chats())),
      child: Container(
          height: height * 0.11,
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
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
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Stack(children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: bgColor,
                    foregroundImage: NetworkImage(widget.groupPreview.image),
                    onForegroundImageError: (exception, stackTrace) {
                      setState(() {
                        initials = widget.groupPreview.name[0] +
                            widget.groupPreview.name[1];
                      });
                    },
                    // backgroundImage: ,
                    child: Visibility(
                      visible: initials.isNotEmpty,
                      child: Text(
                        initials.toUpperCase(),
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 30,
                    child: Container(
                      height: 50,
                      width: 20,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[300]!, width: 4),
                          color: widget.groupPreview.isActive
                              ? Colors.cyan
                              : Colors.grey,
                          shape: BoxShape.circle),
                    ),
                  )
                ]),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              widget.groupPreview.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.grey.shade800),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Stack(
                                alignment: AlignmentDirectional.centerStart,
                                children: [
                                  Positioned(
                                    child: CircleAvatar(
                                      radius: 13,
                                      backgroundColor: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      // foregroundImage: NetworkImage(
                                      //     widget.groupPreview.groupMembers.last),

                                      // backgroundImage: ,
                                      child: Icon(
                                        Icons.person,
                                        size: 10,
                                      ),
                                      // child: Text(
                                      //   "",
                                      //   style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    child: CircleAvatar(
                                      radius: 13,
                                      backgroundColor: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      // foregroundImage: NetworkImage(
                                      //     widget.groupPreview.groupMembers.first),
                                      child: Icon(
                                        Icons.person,
                                        size: 10,
                                      ),
                                      // child: Text(
                                      //   "",
                                      //   style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                      // ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 37,
                                    child: CircleAvatar(
                                      radius: 13,
                                      backgroundColor: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      child: Text(
                                        widget.groupPreview.group2String(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                            flex: 2,
                            child: Text(
                              widget.groupPreview.time,
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Visibility(
                            visible: !(widget.groupPreview.msgStatus ==
                                    MessageStatus.read ||
                                widget.groupPreview.msgStatus ==
                                    MessageStatus.unread),
                            child: Icon(
                                widget.groupPreview.msgStatus ==
                                        MessageStatus.sent
                                    ? Icons.done
                                    : widget.groupPreview.msgStatus ==
                                            MessageStatus.not_sent
                                        ? Icons.access_time_filled_rounded
                                        : Icons.done_all_rounded,
                                color: widget.groupPreview.msgStatus ==
                                        MessageStatus.viewed
                                    ? Colors.green
                                    : Colors.grey,
                                size: 15),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            widget.groupPreview.msgPreview,
                            style: TextStyle(
                                color: (widget.groupPreview.msgStatus ==
                                            MessageStatus.read ||
                                        widget.groupPreview.msgStatus ==
                                            MessageStatus.unread)
                                    ? Colors.black
                                    : Colors.grey,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis),
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}

class CallAlertPreview extends StatefulWidget {
  CallPreview callPreview;

  CallAlertPreview({Key? key, required this.callPreview}) : super(key: key);
  @override
  _CallAlertPreviewState createState() => _CallAlertPreviewState();
}

class _CallAlertPreviewState extends State<CallAlertPreview> {
  String initials = "";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height * 0.11,
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Stack(children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],

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
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 30,
                  child: Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!, width: 4),
                        color: widget.callPreview.isActive
                            ? Colors.cyan
                            : Colors.grey,
                        shape: BoxShape.circle),
                  ),
                )
              ]),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.callPreview.name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis,
                                color: Colors.grey.shade800),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          (widget.callPreview.callStatus == CallStatus.received)
                              ? Icons.call_received
                              : widget.callPreview.callStatus == CallStatus.call
                                  ? Icons.call_made
                                  : Icons.call_missed,
                          color: (widget.callPreview.callStatus ==
                                  CallStatus.received)
                              ? Colors.amber
                              : widget.callPreview.callStatus == CallStatus.call
                                  ? Colors.green
                                  : Colors.red,
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          widget.callPreview.time,
                          style: TextStyle(
                              color: Colors.grey,
                              overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  ],
                )),
            // SizedBox(
            //   width: width * 0.01,
            // ),
            Expanded(
                flex: 2,
                child: Icon(
                  (widget.callPreview.callType == CallType.phone)
                      ? Icons.phone
                      : Icons.videocam,
                  color: Colors.grey,
                  size: 30,
                ))
          ],
        ));
  }
}
