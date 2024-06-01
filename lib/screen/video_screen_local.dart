import 'package:flutter/material.dart';
import 'package:test_mux_ui/screen/bottom_widgets.dart';
import 'package:video_player/video_player.dart';

class VideoScreenLocal extends StatefulWidget {
  const VideoScreenLocal({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return VideoScreenState();
  }
}

class VideoScreenState extends State<VideoScreenLocal> {
  late PageController pageController;
  final List<VideoPlayerController> _controllers = [];
  final List<ValueNotifier<double>> _progressIndicator = [];

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    for (var videoPath in [
      'assets/video/video_01.mp4',
      'assets/video/video_02.mp4',
      'assets/video/video_03.mp4',
      'assets/video/video_04.mp4',
      'assets/video/video_05.mp4',
    ]) {
      VideoPlayerController controller = VideoPlayerController.asset(videoPath)
        ..initialize().then((_) {
          setState(() {});
        });

      _controllers.add(controller);
      _progressIndicator.add(ValueNotifier<double>(0.0));
      controller.addListener(() {
        _updateProgress(controller);
      });
    }
  }

  void _updateProgress(VideoPlayerController controller) {
    int controllerIndex = _controllers.indexOf(controller);
    if (controllerIndex == -1) {
      return;
    }
    final progress = controller.value.position.inMilliseconds /
        controller.value.duration.inMicroseconds *
        1000;
    _progressIndicator[controllerIndex].value = progress;
  }

  @override
  void dispose() {
    for (var item in _controllers) {
      item.removeListener(() {});
      item.dispose();
    }
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView.builder(
          pageSnapping: true,
          itemCount: _controllers.length,
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            for (int i = 0; i < _controllers.length; i++) {
              if (i != value) {
                _controllers[i].pause();
              } else {
                _controllers[i].play();
              }
            }
            if (value == _controllers.length - 1) {
              loadMoreVideos();
            }
          },
          itemBuilder: (context, index) {
            final controller = _controllers[index];
            controller
              ..play()
              ..setLooping(true);
            return controller.value.isInitialized
                ? Stack(
                    fit: StackFit.expand,
                    children: [
                      AspectRatio(
                          aspectRatio: controller.value.aspectRatio,
                          child: VideoPlayer(controller)),
                      Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: ValueListenableBuilder<double>(
                            valueListenable: _progressIndicator[index],
                            builder: (context, value, child) {
                              return LinearProgressIndicator(
                                value: value,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.red),
                                backgroundColor: Colors.grey[300],
                              );
                            },
                          )),
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
          },
        ),
        bottomNavigationBar: const AppBottomNavBar());
  }

  loadMoreVideos() {
    List<String> videos = [
      'assets/video/video_01.mp4',
      'assets/video/video_02.mp4',
      'assets/video/video_03.mp4',
      'assets/video/video_04.mp4',
      'assets/video/video_05.mp4',
    ];

    for (var video in videos) {
      VideoPlayerController controller = VideoPlayerController.asset(video)
        ..initialize().then((_) {
          setState(() {});
        });

      _controllers.add(controller);
      _progressIndicator.add(ValueNotifier<double>(0.0));
    }
  }
}
