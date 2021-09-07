import './body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTabScreen extends StatefulWidget {
  @override
  _MainTabScreenState createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  static const double cameraTabSize = 30.0;
  @override
  Widget build(BuildContext context) {
    Widget camTab() {
      return Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        width: cameraTabSize,
        child: Tab(icon: Icon(Icons.camera_alt)),
      );
    }

    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Theme.of(context).textTheme.headline6!.color,
            indicatorWeight: 2.5,
            labelStyle: Theme.of(context).textTheme.headline6,
            unselectedLabelColor: Colors.white70,
            isScrollable: true,
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
            tabs: [
              camTab(),
              Tab(
                child: Container(
                  width: (MediaQuery.of(context).size.width - cameraTabSize - 16) / 3,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'CHATS',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              '4',
                              style: TextStyle(fontSize: 13),
                            ),
                            radius: 9.5,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - cameraTabSize - 16) / 3,
                child: Tab(
                  child: Text(
                    'STATUS',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - cameraTabSize - 16) / 3,
                child: Tab(
                  child: Text(
                    'CALLS',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              iconSize: Theme.of(context).iconTheme.size!,
              icon: Icon(
                Icons.search_outlined,
              ),
              onPressed: () {},
            ),
            IconButton(
              iconSize: Theme.of(context).iconTheme.size!,
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            ),
          ],
          title: Text('WhatsApp'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
        ),
        body: TabBarView(
          children: <Widget>[
            Body(),
            Body(),
            Body(),
            Body(),
          ],
        ),
      ),
    );
  }
}
