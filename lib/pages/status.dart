import 'package:flutter/material.dart';
import 'package:whatsapp/pages/status_modal.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: AssetImage('images/p.png'),
          ),
          title:
              Text('Mystatus', style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle:
              Text('Tap to Add', style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            print('mystatus');
          },
        ),
        Divider(),
        Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recent',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            )),
        Flexible(
            child: ListView.builder(
                itemCount: statusData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            backgroundImage: AssetImage(
                                statusData[i].avatar ?? 'images/p.png'),
                          ),
                          title: Text(statusData[i].name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(statusData[i].time,
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 15.0)),
                        )
                      ],
                    )))
      ],
    );
  }
}
