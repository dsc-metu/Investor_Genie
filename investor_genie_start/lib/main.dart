import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text('Investor Genie'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: GenieApp(),
      ),
    ),
  );
}

class GenieApp extends StatefulWidget {
  @override
  _GenieAppState createState() => _GenieAppState();
}

class _GenieAppState extends State<GenieApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/*                            STATELESSS                           */

class GenieAppStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
