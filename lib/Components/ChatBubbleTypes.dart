// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReceipientBubble extends StatefulWidget {
  const ReceipientBubble({Key? key}) : super(key: key);

  @override
  _ReceipientBubbleState createState() => _ReceipientBubbleState();
}

class _ReceipientBubbleState extends State<ReceipientBubble> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Flexible(
      // height: height * 0.1859 ,
      // alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // alignment: Alignment.topLeft,
            // height: height * 0.1,
            width: width * 0.85,

            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(120),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(120)),
            ),
            child: Text.rich(
              TextSpan(
                  text:
                      "his property takes FlexFit value as a parameter. It decides how a Flexible child widget will fill the space available to it. A child widget can choose to take the maximum area with FlexFit.tight value or it can choose a minimum area with FlexFit.loose value. Or it can be assigned FlexFit.valuesddddddddddddddddddddddddddddddddd",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400)),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // SizedBox(height: height*0.005,),
          Text(
            "02-04-2020 08:43 PM",
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 15,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}

class SenderBubble extends StatefulWidget {
  const SenderBubble({Key? key}) : super(key: key);

  @override
  _SenderBubbleState createState() => _SenderBubbleState();
}

class _SenderBubbleState extends State<SenderBubble> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Flexible(
      // height: height * 0.2,
      // alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            // alignment: Alignment.topLeft,
            // height: height * 0.1,
            width: width * 0.8,

            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Color(0xff6925ad),
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(120),
                  topLeft: Radius.circular(120)),
            ),
            child: Text.rich(
              TextSpan(
                  text: "dddddddddddddddddddddddddddddddddddddd",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400)),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // SizedBox(height: height*0.005,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "02-04-2020 08:43 PM",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Icon(Icons.done),
            ],
          )
        ],
      ),
    );
  }
}

class GroupReceipient extends StatefulWidget {
  const GroupReceipient({Key? key}) : super(key: key);

  @override
  _GroupReceipientState createState() => _GroupReceipientState();
}

class _GroupReceipientState extends State<GroupReceipient> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      // height: height * 0.1859 ,
      // alignment: Alignment.topLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8.w,
            height: 8.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Icon(
              Icons.person,
              color: Color(0xffffffff),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // alignment: Alignment.topLeft,
                  // height: height * 0.1,
                  width: 75.w,

                  padding: EdgeInsets.only(
                    bottom: 15,
                    left: 15,
                    right: 15,
                    top: 5,
                  ),
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          "Agartha Harkness",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                          maxLines: 1,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                            text:
                                "his property takes FlexFit value as a parameter. It decides how a Flexible child widget will fill the space available to it. A child widget can choose to take the maximum area with FlexFit.tight value or it can choose a minimum area with FlexFit.loose value. Or it can be assigned FlexFit.valuesddddddddddddddddddddddddddddddddd",
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black87,
                            )),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),

                // SizedBox(height: height*0.005,),
                Text(
                  "02-04-2020 08:43 PM",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 9,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
