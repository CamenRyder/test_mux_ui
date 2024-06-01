class MuxAsset {
  final String uploadId;
  final String playbackId;
  final Duration duration;
  final DateTime createAt;

  MuxAsset(
      {required this.createAt,
      required this.duration,
      required this.playbackId,
      required this.uploadId});

  factory MuxAsset.fromJson(Map<String, dynamic> json) {
    final duration = Duration(milliseconds: (json['duration'] * 1000).toInt());
    final createAt = DateTime.fromMillisecondsSinceEpoch(
        int.parse(json['created_at']) * 1000);
    return MuxAsset(
        createAt: createAt,
        duration: duration,
        playbackId: json['playback_ids'][0]['id'],
        uploadId: json['upload_id']);
  }
}
