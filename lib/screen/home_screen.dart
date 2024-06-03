import 'package:flutter/material.dart';
import 'package:test_mux_ui/screen/widget/button_customize2.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Trang chủ",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(12),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Container(
              margin: EdgeInsets.only(right: 20, top: 12),
              child: ButtonNormal(
                onPress: () => Navigator.pushNamed(context, '/live'),
                text: "Create Livestream",
                color: const Color.fromARGB(255, 37, 159, 132),
              )),
          Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              child: ButtonNormal(
                onPress: () => Navigator.pushNamed(context, '/watch'),
                text: "Watch livestream",
                color: Color.fromARGB(255, 91, 156, 209),
              )),
          Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              child: ButtonNormal(
                onPress: () => Navigator.pushNamed(context, '/playback'),
                text: "Video playback",
                color: Color.fromARGB(255, 209, 91, 91),
              )),
        ],
      ),
    );
  }
}
