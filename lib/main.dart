import 'package:flutter/material.dart';
import 'package:test_mux_ui/screen/video_screen_mux.dart';
import 'package:test_mux_ui/services/video_client.dart';

Future<void> main() async {
  final videoClient = VideoClient();
  final muxAssets = await videoClient.getMuxAssets();
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
      home: const VideoScreenMux(),
    );
  }
}
