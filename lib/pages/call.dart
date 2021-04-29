import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_modal.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: callData.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage:
                          AssetImage(callData[i].avatar ?? 'images/p.png'),
                    ),
                    title: Text(callData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Row(
                      children: [
                        Container(
                          child: callData[i].calltype,
                        ),
                        Text(callData[i].time,
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ],
                    ),
                    trailing: Icon(
                      Icons.call,
                      size: 25,
                      color: Theme.of(context).primaryColor,
                    ),
                    onTap: () {},
                  ),
                ],
              )),
    );
  }
}
