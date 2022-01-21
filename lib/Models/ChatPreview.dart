// ignore_for_file: constant_identifier_names, file_names

// import 'dart:math';

// import 'package:flutter/material.dart';

// // Color _randomColor =
// //           Colors.primaries[Random().nextInt(Colors.primaries.length)];
enum MessageStatus { not_sent, sent, viewed, read, unread }
enum CallStatus { missed, call, received }
enum CallType { phone, video }

class ChatPreview {
  final String name, msgPreview, image, time;
  final bool isActive;
  final bool isIncoming;
  MessageStatus msgStatus;

  ChatPreview(
      {required this.name,
      required this.msgPreview,
      required this.image,
      required this.time,
      required this.isActive,
      required this.msgStatus,
      required this.isIncoming});
}

List chatPreviewsDemo = [
  ChatPreview(
      name: "Iron Stark",
      msgPreview: "Hope you are doing well, haven't seen you in ages.",
      image:
          "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_1.png",
      time: "3m ago",
      isActive: false,
      msgStatus: MessageStatus.sent,
      isIncoming: true),
  ChatPreview(
      name: "DumbleDore",
      msgPreview: "Hello Abdullah! I am...",
      image:
          "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png",
      time: "8m ago",
      isActive: false,
      msgStatus: MessageStatus.not_sent,
      isIncoming: false),
  ChatPreview(
      name: "Agartha Harkness",
      msgPreview: "Witch Coven meeting @7PM don't miss",
      image:
          "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png",
      time: "5d ago",
      isActive: true,
      msgStatus: MessageStatus.viewed,
      isIncoming: true),
  // ChatPreview(
  //   name: "Jacob Jones",
  //   msgPreview: "You're welcome :)",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_4.png",
  //   time: "5d ago",
  //   isActive: true,
  // ),
  // ChatPreview(
  //   name: "Albert Flores",
  //   msgPreview: "Thanks",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_5.png",
  //   time: "6d ago",
  //   isActive: false,
  // ),
  // ChatPreview(
  //   name: "Jenny Wilson",
  //   msgPreview: "Hope you are doing well...",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_1.png",
  //   time: "3m ago",
  //   isActive: false,
  // ),
  // ChatPreview(
  //   name: "Esther Howard",
  //   msgPreview: "Hello Abdullah! I am...",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png",
  //   time: "8m ago",
  //   isActive: true,
  // ),
  // ChatPreview(
  //   name: "Ralph Edwards",
  //   msgPreview: "Do you have update...",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png",
  //   time: "5d ago",
  //   isActive: false,
  // ),
];

class GroupPreview {
  final String name, msgPreview, image, time;
  int memberNumber;
  final bool isActive;
  List<String> groupMembers = [];
  final bool isIncoming;
  MessageStatus msgStatus;

  GroupPreview({
    required this.name,
    required this.memberNumber,
    required this.msgPreview,
    required this.image,
    required this.time,
    required this.isActive,
    required this.msgStatus,
    required this.isIncoming,
    required this.groupMembers,
  });
  String group2String() {
    late String val;

    if (memberNumber >= 100) {
      val = "99+";
    } else {
      val = memberNumber.toString();
    }

    return val;
  }
}

List groupPreviewsDemo = [
  // ChatPreview(
  //     name: "Iron Stark",
  //     msgPreview: "Hope you are doing well, haven't seen you in ages.",
  //     image:
  //         "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_1.png",
  //     time: "3m ago",
  //     isActive: false,
  //     msgStatus: MessageStatus.sent,
  //     isIncoming: true),
  // ChatPreview(
  //     name: "Nigga DumbleDore",
  //     msgPreview: "Hello Abdullah! I am...",
  //     image:
  //         "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png",
  //     time: "8m ago",
  //     isActive: false,
  //     msgStatus: MessageStatus.not_sent,
  //     isIncoming: false),
  // ChatPreview(
  //     name: "Agartha Harkness",
  //     msgPreview: "Witch Coven meetint @7PM don't miss",
  //     image:
  //         "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png",
  //     time: "5d ago",
  //     isActive: true,
  //     msgStatus: MessageStatus.viewed,
  //     isIncoming: true),
  GroupPreview(
    name: "Debauchery Tea Party",
    msgPreview: "You're welcome :)",
    image:
        "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_4.png",
    time: "5d ago",
    isActive: true,
    isIncoming: false,
    msgStatus: MessageStatus.viewed,
    memberNumber: 13,
    groupMembers: [
      "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png"
          ",https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png"
    ],
  ),
  GroupPreview(
    name: "The Inclings",
    msgPreview: "Thanks",
    image:
        "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_5.png",
    time: "Yesterday",
    isActive: false,
    isIncoming: true,
    msgStatus: MessageStatus.read,
    memberNumber: 8,
    groupMembers: [
      "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png"
          ",https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png"
    ],
  ),
  GroupPreview(
    name: "Ainz Ooal Gown",
    msgPreview: "Hope you all doing well.",
    image:
        "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_1.png",
    time: "3m ago",
    isActive: false,
    isIncoming: false,
    msgStatus: MessageStatus.viewed,
    memberNumber: 100,
    groupMembers: [
      "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png"
          ",https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png"
    ],
  ),
  // ChatPreview(
  //   name: "Esther Howard",
  //   msgPreview: "Hello Abdullah! I am...",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png",
  //   time: "8m ago",
  //   isActive: true,
  // ),
  // ChatPreview(
  //   name: "Ralph Edwards",
  //   msgPreview: "Do you have update...",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png",
  //   time: "5d ago",
  //   isActive: false,
  // ),
];

class CallPreview {
  final String name, image, time;
  final bool isActive;
  CallType callType;
  CallStatus callStatus;

  CallPreview({
    required this.name,
    required this.image,
    required this.time,
    required this.isActive,
    required this.callType,
    required this.callStatus,
  });
}

List callPreviewsDemo = [
  // ChatPreview(
  //     name: "Iron Stark",
  //     msgPreview: "Hope you are doing well, haven't seen you in ages.",
  //     image:
  //         "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_1.png",
  //     time: "3m ago",
  //     isActive: false,
  //     msgStatus: MessageStatus.sent,
  //     isIncoming: true),
  // ChatPreview(
  //     name: "Nigga DumbleDore",
  //     msgPreview: "Hello Abdullah! I am...",
  //     image:
  //         "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png",
  //     time: "8m ago",
  //     isActive: false,
  //     msgStatus: MessageStatus.not_sent,
  //     isIncoming: false),
  // ChatPreview(
  //     name: "Agartha Harkness",
  //     msgPreview: "Witch Coven meetint @7PM don't miss",
  //     image:
  //         "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png",
  //     time: "5d ago",
  //     isActive: true,
  //     msgStatus: MessageStatus.viewed,
  //     isIncoming: true),
  // GroupPreview(
  //   name: "Jacob Jones",
  //   msgPreview: "You're welcome :)",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_4.png",
  //   time: "5d ago",
  //   isActive: true,
  //   isIncoming: false,
  //   msgStatus: MessageStatus.viewed,
  //   memberNumber: "13",
  //   groupMembers: [
  //     "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png"
  //         ",https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png"
  //   ],
  // ),
  // GroupPreview(
  //   name: "Albert Flores",
  //   msgPreview: "Thanks",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_5.png",
  //   time: "Yesterday",
  //   isActive: false,
  //   isIncoming: true,
  //   msgStatus: MessageStatus.read,
  //   memberNumber: "8",
  //   groupMembers: [
  //     "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png"
  //         ",https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png"
  //   ],
  // ),
  // GroupPreview(
  //   name: "Jenny Wilson",
  //   msgPreview: "Hope you are doing well...",
  //   image:
  //       "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_1.png",
  //   time: "3m ago",
  //   isActive: false,
  //   isIncoming: false,
  //   msgStatus: MessageStatus.viewed,
  //   memberNumber: "99",
  //   groupMembers: [
  //     "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png"
  //         ",https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png"
  //   ],
  // ),
  CallPreview(
      name: "One Eyed Owl",
      image:
          "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_2.png",
      time: "8m ago",
      isActive: true,
      callStatus: CallStatus.call,
      callType: CallType.phone),
  CallPreview(
      name: "Ralph Wreck",
      image:
          "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png",
      time: "5d ago",
      isActive: false,
      callStatus: CallStatus.received,
      callType: CallType.video),
  CallPreview(
      name: "Agartha Harkness",
      image:
          "https://gitlab.com/Qweku/icb_mobile_assets/-/raw/main/assets/images/user_3.png",
      time: "5d ago",
      isActive: false,
      callStatus: CallStatus.missed,
      callType: CallType.video),
];
