import 'package:flutter/material.dart';

class WatchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WatchScreenState();
  }
}

class WatchScreenState extends State<WatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watch Screen'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Watch Screen'),
      ),
    );
  }
}
