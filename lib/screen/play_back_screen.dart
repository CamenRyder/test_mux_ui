import 'package:flutter/material.dart';

class PlayBackScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PlayBackScreenState();
  }
}

class PlayBackScreenState extends State<PlayBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play watch Screen'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Watch Screen'),
      ),
    );
  }
}
