import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String message;
  final String time;
  final String avatar;
  final Icon calltype;
  CallModel({this.name, this.message, this.avatar, this.time, this.calltype});

  static Icon callRecived = Icon(
    Icons.call_received,
    color: Colors.green,
  );

  static Icon callMissed = Icon(
    Icons.call_missed,
  );
}

List<CallModel> callData = [
  CallModel(
    name: "Rahul",
    calltype: CallModel.callRecived,
    time: "12:20 p.m.",
    avatar: "images/p.png",
  ),
  CallModel(
    name: "Payal",
    time: "1:20 p.m.",
    avatar: "images/p.png",
  ),
  CallModel(
    name: "Tika",
    time: "10:00 p.m.",
    avatar: "images/p.png",
  ),
  CallModel(
    name: "Shreya",
    calltype: CallModel.callMissed,
    time: "10:00 p.m.",
  ),
  CallModel(
    name: "Ritika",
    time: "10:00 p.m.",
  ),
  CallModel(
    name: "Pandey",
    time: "10:00 p.m.",
  ),
];
