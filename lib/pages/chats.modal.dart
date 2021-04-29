import 'package:flutter/material.dart';

class ChatsModel {
  final String name;
  final String message;
  final String time;
  final String avatar;
  ChatsModel({this.name, this.message, this.avatar, this.time});
}

List<ChatsModel> chatData = [
  ChatsModel(
    name: "Rahul",
    message: "kl ayga tu?",
    time: "12:20 p.m.",
    avatar: "images/p.png",
  ),
  ChatsModel(
    name: "Payal",
    message: "hi, plz reply?",
    time: "1:20 p.m.",
    avatar: "images/p.png",
  ),
  ChatsModel(
    name: "Tika",
    message: "abe zinda h tu?",
    time: "10:00 p.m.",
    avatar: "images/p.png",
  ),
  ChatsModel(
    name: "Shreya",
    message: "aur sunao?",
    time: "10:00 p.m.",
  ),
  ChatsModel(
    name: "Ritika",
    message: "are kha h tu?",
    time: "10:00 p.m.",
  ),
  ChatsModel(
    name: "Pandey",
    message: "hello?",
    time: "10:00 p.m.",
  ),
  ChatsModel(
    name: "Sharma",
    message: "cu tommorow?",
    time: "10:00 p.m.",
    avatar: "images/p.png",
  ),
  ChatsModel(
    name: "sumit",
    message: "abe ?",
    time: "10:00 p.m.",
    avatar: "images/p.png",
  ),
  ChatsModel(
    name: "rohit",
    message: "wtf?",
    time: "10:00 p.m.",
    avatar: "images/p.png",
  ),
];
