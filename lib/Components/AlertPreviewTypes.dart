// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/Models/ChatPreview.dart';
import 'package:transmyt/screens/Chats.dart';

class ChatAlertPreview extends StatefulWidget {
 final ChatPreview chatPreview;

  const ChatAlertPreview({super.key, required this.chatPreview});

  @override
  _ChatAlertPreviewState createState() => _ChatAlertPreviewState();
}

class _ChatAlertPreviewState extends State<ChatAlertPreview> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (builder) => Chats())),
      child: Container(
           padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: .8.h),
          decoration: BoxDecoration(
            color: Colors.grey[300],
           ),
          child: Row(
             children: [
              Container(
                width: 8.w,
                height: 8.w,
                decoration: BoxDecoration(
                    color: Color(0xff6925ad),
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(
                  Icons.person_rounded,
                  color: Colors.white,
                  size: 15,
                ),
              ),
              SizedBox(
                width: 2.w,
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
                              widget.chatPreview.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.grey.shade800),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              widget.chatPreview.time,
                              textAlign: TextAlign.right,
                              style: TextStyle(color: Colors.grey, fontSize: 8),
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
                              size: 13,
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
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
                                  fontSize: 12,
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
 final GroupPreview groupPreview;

 const GroupAlertPreview({
    super.key,
    required this.groupPreview,
  });
  @override
  _GroupAlertPreviewState createState() => _GroupAlertPreviewState();
}

class _GroupAlertPreviewState extends State<GroupAlertPreview> {
  // final bgColor = Color.fromARGB(
  //     0, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));

  // final  gColor = Color.fromARGB(0, 0, 0, 90);
  @override
  Widget build(BuildContext context) {
    String initials = widget.groupPreview.name[0] + widget.groupPreview.name[1];

    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (builder) => Chats())),
      child: Container(
          // height: 11.h,
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: .8.h),
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Stack(children: [
                  Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: NetworkImage(widget.groupPreview.image),
                          // ),
                          color: Color(0xff6925ad),
                          borderRadius: BorderRadius.circular(8)),

                      // backgroundImage: ,
                      child: Image(
                        image: NetworkImage(widget.groupPreview.image),
                        fit: BoxFit.cover,
                        errorBuilder: (context, object, trace) => Center(
                          child: Text(
                            'Er' + initials.toUpperCase(),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        loadingBuilder: (context, object, trace) => Center(
                          child: Text(
                            initials.toUpperCase(),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )

                      // Visibility(
                      //   visible: initials.isNotEmpty,
                      //   child: Text(
                      //     initials.toUpperCase(),
                      //     style: TextStyle(
                      //         fontSize: 30,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.w500),
                      //   ),
                      // ),
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
              Expanded(
                  flex: 9,
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
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
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
                                    child: Container(
                                      width: 4.w,
                                      height: 4.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xff6925ad),
                                          border: Border.all(
                                            strokeAlign: BorderSide.strokeAlignOutside,
                                              color: const Color.fromRGBO(
                                                  224, 224, 224, 1),
                                              width: .8),
                                          borderRadius: BorderRadius.circular(
                                            2,
                                          )),
                                      // foregroundImage: NetworkImage(
                                      //     widget.groupPreview.groupMembers.last),

                                      // backgroundImage: ,
                                      child: Icon(
                                        Icons.person,
                                        size: 7,
                                        color: Colors.white,
                                      ),
                                      // child: Text(
                                      //   "",
                                      //   style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    child: Container(
                                      width: 4.w,
                                      height: 4.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xff6925ad),
                                          border: Border.all(                                            strokeAlign: BorderSide.strokeAlignOutside,

                                              color: const Color.fromRGBO(
                                                  224, 224, 224, 1),
                                              width: .8),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      // foregroundImage: NetworkImage(
                                      //     widget.groupPreview.groupMembers.last),

                                      // backgroundImage: ,
                                      child: Icon(
                                        Icons.person,
                                        size: 7,
                                        color: Colors.white,
                                      ),
                                      // child: Text(
                                      //   "",
                                      //   style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    child: Container(
                                      width: 4.w,
                                      height: 4.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xff6925ad),
                                          border: Border.all(                                            strokeAlign: BorderSide.strokeAlignOutside,

                                              color: const Color.fromRGBO(
                                                  224, 224, 224, 1),
                                              width: .8),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      // foregroundImage: NetworkImage(
                                      //     widget.groupPreview.groupMembers.last),

                                      // backgroundImage: ,

                                      child: Center(
                                        child: Text(
                                          widget.groupPreview.group2String(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500),
                                        ),
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
                                  TextStyle(color: Colors.grey, fontSize: 10),
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
                                size: 13),
                          ),
                          SizedBox(
                            width: 1.w,
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
                                fontSize: 12,
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

  CallAlertPreview({super.key, required this.callPreview});
  @override
  _CallAlertPreviewState createState() => _CallAlertPreviewState();
}

class _CallAlertPreviewState extends State<CallAlertPreview> {
  @override
  Widget build(BuildContext context) {
    String initials = widget.callPreview.image[0] + widget.callPreview.image[1];

    return Container(
        // height: height * 0.11,
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: .8.h),
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Stack(children: [
                Container(
                  width: 8.w,
                  height: 8.w,
                  decoration: BoxDecoration(
                      color: Color(0xff6925ad),
                      borderRadius: BorderRadius.circular(8)),

                  // foregroundImage: NetworkImage(widget.callPreview.image),
                  // onForegroundImageError: (exception, stackTrace) {
                  //   setState(() {
                  //     initials = widget.callPreview.name[0] +
                  //         widget.callPreview.name[1];
                  //   });
                  // },
                  // backgroundImage: ,
                  child: Center(
                    child: Text(
                      initials.toUpperCase(),
                      style: TextStyle(
                          fontSize: 12,
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
            SizedBox(width: 2.w),

            Expanded(
                flex: 9,
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
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
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
                          size: 10,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          widget.callPreview.time,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  ],
                )),
            // SizedBox(
            //   width: 1.w,
            // ),
            Expanded(
                flex: 2,
                child: Icon(
                  (widget.callPreview.callType == CallType.phone)
                      ? Icons.phone
                      : Icons.videocam,
                  color: Colors.grey,
                  size: 15,
                ))
          ],
        ));
  }
}
