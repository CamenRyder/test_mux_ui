import 'package:test_mux_ui/services/mux_assets.dart';
import 'package:test_mux_ui/model/video.dart';
import 'package:test_mux_ui/services/video_client.dart';

class VideoRepository {
  final VideoClient _videoClient;
  VideoRepository({required VideoClient videoClient})
      : _videoClient = videoClient;

  Future<List<Video>> getVideos() async {
    try {
      final videos = await Future.delayed(const Duration(seconds: 1),
          () => Video.videoExamples.map((e) => Video.fromJson(e)).toList());
      // final videos = await _videoClient.getMuxAssets();
      // final videoClient = VideoClient();
//     final muxAssets = await videoClient.getMuxAssets();
      final updateVideos = <Video>[];
      for (var video in videos) {
        final muxAssetsJson = await _videoClient.getMuxAsset(video.muxId);
        final muxAssets = MuxAsset.fromJson(muxAssetsJson['data']);
        updateVideos.add(video.copyWith(muxAsset: muxAssets));
      }

      return updateVideos;
    } catch (e) {
      throw Exception('Failed to load videos');
    }
  }
}
