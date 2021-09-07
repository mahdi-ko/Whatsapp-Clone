import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/contact.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Contact> contacts = [
    Contact(
      id: 'FontFeature.randomize()',
      pic: 'images/all 2017-03-27 001.jpg',
      name: "LT bir hasan",
      lastChat: "mohammad: done",
      lastChatTime: "09:50 PM",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          MediaQuery.of(context).size.height - 49 - Scaffold.of(context).appBarMaxHeight!.toInt(),
      child: ListView(
        children: contacts.map((contact) {
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                ),
                child: InkWell(
                  onDoubleTap: emptyList,
                  splashColor: Theme.of(context).primaryColor,
                  onTap: addContact,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage(
                        "images/all 2017-03-27 001.jpg",
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        contact.name,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Text(
                      contact.lastChat,
                      style: TextStyle(fontSize: 15),
                    ),
                    trailing: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Text(
                            contact.lastChatTime,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(0, 200, 0, 1),
                          foregroundColor: Colors.white,
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          radius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 92, right: 15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.8,
                      color: Colors.grey[300]!,
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  void emptyList() {
    setState(() {
      contacts.clear();
    });
  }

  void addContact() {
    setState(() {
      contacts.add(Contact(
        id: 'FontFeature.randomize()',
        pic: 'images/all 2017-03-27 001.jpg',
        name: "LT bir hasan",
        lastChat: "mohammad: done",
        lastChatTime: "09:50 PM",
      ));
    });
  }
}
