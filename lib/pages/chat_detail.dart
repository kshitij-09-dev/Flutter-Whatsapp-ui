import 'package:flutter/material.dart';

import 'message.dart';

class ChatDetail extends StatefulWidget {
  ChatDetail({
    Key key,
  }) : super(key: key);

  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('images/p.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text('rahul'),
              )
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.video_call),
                onPressed: () {
                  print('video button clicked');
                }),
            IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  print('call button clicked');
                }),
            IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('more button clicked');
                }),
          ],
        ),
        body: Column(
          children: [
            Expanded(child: MessagePage()),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          hintText: 'Type a message'),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
