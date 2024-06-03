import 'package:apivideo_live_stream/apivideo_live_stream.dart';

class Params {
  final VideoConfig video =
      VideoConfig.withDefaultBitrate(resolution: Resolution.RESOLUTION_360);
  final AudioConfig audio = AudioConfig();

  String rtmpUrl = "rtmps://global-live.mux.com:443/app";
  String streamKey = "dc342032-bf1c-28aa-cdf6-74079cd5a481";

  // String getResolutionToString() {
  //   return video.resolution.toPrettyString();
  // }

  // String getChannelToString() {
  //   return audio.channel.toPrettyString();
  // }

  // String getBitrateToString() {
  //   return bitrateToPrettyString(audio.bitrate);
  // }

  // String getSampleRateToString() {
  //   return audio.sampleRate.toPrettyString();
  // }
}
