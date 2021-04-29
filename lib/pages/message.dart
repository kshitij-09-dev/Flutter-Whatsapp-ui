import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const styleSender = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nipWidth: 8,
    nipHeight: 24,
    nip: BubbleNip.rightTop,
    showNip: false,
    color: Color.fromRGBO(225, 255, 199, 1.0),
  );
  static const styleReceiver = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nipWidth: 8,
    nipHeight: 24,
    nip: BubbleNip.leftTop,
    showNip: false,
  );

  ScrollController _mycontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _mycontroller.jumpTo(_mycontroller.position.maxScrollExtent);
    });
    return ListView(
      children: [
        Bubble(
          alignment: Alignment.center,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('yesterday',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          style: styleReceiver,
          child: Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: Text('Hello, World!', textAlign: TextAlign.right),
          showNip: false,
        ),
        Bubble(
          style: styleSender,
          child: Text('Hi, developer!'),
          showNip: false,
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.center,
          nip: BubbleNip.no,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('Today',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          style: styleReceiver,
          child: Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: Text('Hello, World!', textAlign: TextAlign.right),
          showNip: false,
        ),
        Bubble(
          style: styleSender,
          child: Text('Hi, developer!'),
          showNip: false,
        ),
        Bubble(
          style: styleReceiver,
          child: Text('Hello, World!', textAlign: TextAlign.right),
          showNip: false,
        ),
        Bubble(
          style: styleSender,
          child: Text('Hi, developer!'),
          showNip: false,
        ),
      ],
    );
  }
}
