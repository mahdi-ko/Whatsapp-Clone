import 'package:flutter/material.dart';

import 'widgets/body.dart';
import 'widgets/main_tab_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color.fromRGBO(0, 200, 0, 1), foregroundColor: Colors.white),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.teal[800],
          elevation: 0,
        ),
        primarySwatch: Colors.teal,
        iconTheme: IconThemeData(
          color: Colors.white70,
          size: 24,
          opacity: 1,
        ),
        primaryColor: Colors.teal[800],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainTabScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      appBar: AppBar(
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
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Body(),
        ],
      ),
    );
  }
}
