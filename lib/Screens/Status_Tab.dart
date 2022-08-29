// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';

class StatusTab extends StatefulWidget {
  const StatusTab({Key? key}) : super(key: key);

  @override
  _StatusTabState createState() => _StatusTabState();
}

class _StatusTabState extends State<StatusTab> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02,vertical: height*0.01),

          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    // foregroundImage: NetworkImage(widget.chatPreview.image),
                    // onForegroundImageError: (exception, stackTrace) {
                    //   setState(() {
                    //     initials = widget.chatPreview.name[0] +
                    //         widget.chatPreview.name[1];
                    //   });
                    // },
                    child: const Icon(
                      Icons.person_outline_rounded,
                      size: 30,
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
                          color:  Colors.grey,
                          shape: BoxShape.circle),
                    ),
                  )
                ]),
              ),
              SizedBox(
                width: width * 0.05,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
