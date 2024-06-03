import 'package:flutter/material.dart';
import 'package:test_mux_ui/screen/home_screen.dart';
import 'package:test_mux_ui/screen/live_screen.dart';
import 'package:test_mux_ui/screen/play_back_screen.dart';
import 'package:test_mux_ui/screen/watch_screen.dart';
import 'package:test_mux_ui/services/video_client.dart';

Future<void> main() async {
  final videoClient = VideoClient();
  final muxAssets = await videoClient.getMuxAssets();
  print("======== <> ===========");
  print(muxAssets);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home' :(context) => HomeScreen() , 
        '/live': (context) => LiveScreen(),
        '/watch': (context) => WatchScreen(),
        '/playback':(context) => PlayBackScreen(),
      },
      home: HomeScreen(),
      // home: const VideoScreenMux(),
    );
  }
}
