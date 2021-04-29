import 'package:flutter/material.dart';

class StatusModel {
  final String name;
  final String time;
  final String avatar;
  StatusModel({
    this.name,
    this.avatar,
    this.time,
  });
}

List<StatusModel> statusData = [
  StatusModel(
    name: "Rahul",
    time: "12:20 p.m.",
    avatar: "images/p.png",
  ),
  StatusModel(
    name: "Payal",
    time: "1:20 p.m.",
    avatar: "images/p.png",
  ),
  StatusModel(
    name: "Tika",
    time: "10:00 p.m.",
    avatar: "images/p.png",
  ),
  StatusModel(
    name: "Shreya",
    time: "10:00 p.m.",
  ),
  StatusModel(
    name: "Ritika",
    time: "10:00 p.m.",
  ),
  StatusModel(
    name: "Pandey",
    time: "10:00 p.m.",
  ),
];
