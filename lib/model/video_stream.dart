class VideoStream {
  List<Tracks>? tracks;
  bool? test;
  String? status;
  String? resolutionTier;
  List<RecordingTimes>? recordingTimes;
  List<PlaybackIds>? playbackIds;
  String? mp4Support;
  String? maxStoredResolution;
  int? maxStoredFrameRate;
  String? maxResolutionTier;
  String? masterAccess;
  String? liveStreamId;
  String? ingestType;
  String? id;
  String? encodingTier;
  double? duration;
  String? createdAt;
  String? aspectRatio;

  VideoStream(
      {this.tracks,
      this.test,
      this.status,
      this.resolutionTier,
      this.recordingTimes,
      this.playbackIds,
      this.mp4Support,
      this.maxStoredResolution,
      this.maxStoredFrameRate,
      this.maxResolutionTier,
      this.masterAccess,
      this.liveStreamId,
      this.ingestType,
      this.id,
      this.encodingTier,
      this.duration,
      this.createdAt,
      this.aspectRatio});

  VideoStream.fromJson(Map<String, dynamic> json) {
    if (json['tracks'] != null) {
      tracks = <Tracks>[];
      json['tracks'].forEach((v) {
        tracks!.add(new Tracks.fromJson(v));
      });
    }
    test = json['test'];
    status = json['status'];
    resolutionTier = json['resolution_tier'];
    if (json['recording_times'] != null) {
      recordingTimes = <RecordingTimes>[];
      json['recording_times'].forEach((v) {
        recordingTimes!.add(new RecordingTimes.fromJson(v));
      });
    }
    if (json['playback_ids'] != null) {
      playbackIds = <PlaybackIds>[];
      json['playback_ids'].forEach((v) {
        playbackIds!.add(new PlaybackIds.fromJson(v));
      });
    }
    mp4Support = json['mp4_support'];
    maxStoredResolution = json['max_stored_resolution'];
    maxStoredFrameRate = json['max_stored_frame_rate'];
    maxResolutionTier = json['max_resolution_tier'];
    masterAccess = json['master_access'];
    liveStreamId = json['live_stream_id'];
    ingestType = json['ingest_type'];
    id = json['id'];
    encodingTier = json['encoding_tier'];
    duration = json['duration'];
    createdAt = json['created_at'];
    aspectRatio = json['aspect_ratio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tracks != null) {
      data['tracks'] = this.tracks!.map((v) => v.toJson()).toList();
    }
    data['test'] = this.test;
    data['status'] = this.status;
    data['resolution_tier'] = this.resolutionTier;
    if (this.recordingTimes != null) {
      data['recording_times'] =
          this.recordingTimes!.map((v) => v.toJson()).toList();
    }
    if (this.playbackIds != null) {
      data['playback_ids'] = this.playbackIds!.map((v) => v.toJson()).toList();
    }
    data['mp4_support'] = this.mp4Support;
    data['max_stored_resolution'] = this.maxStoredResolution;
    data['max_stored_frame_rate'] = this.maxStoredFrameRate;
    data['max_resolution_tier'] = this.maxResolutionTier;
    data['master_access'] = this.masterAccess;
    data['live_stream_id'] = this.liveStreamId;
    data['ingest_type'] = this.ingestType;
    data['id'] = this.id;
    data['encoding_tier'] = this.encodingTier;
    data['duration'] = this.duration;
    data['created_at'] = this.createdAt;
    data['aspect_ratio'] = this.aspectRatio;
    return data;
  }
}

class Tracks {
  String? type;
  bool? primary;
  int? maxChannels;
  String? maxChannelLayout;
  String? id;
  int? maxWidth;
  int? maxHeight;
  int? maxFrameRate;

  Tracks(
      {this.type,
      this.primary,
      this.maxChannels,
      this.maxChannelLayout,
      this.id,
      this.maxWidth,
      this.maxHeight,
      this.maxFrameRate});

  Tracks.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    primary = json['primary'];
    maxChannels = json['max_channels'];
    maxChannelLayout = json['max_channel_layout'];
    id = json['id'];
    maxWidth = json['max_width'];
    maxHeight = json['max_height'];
    maxFrameRate = json['max_frame_rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['primary'] = this.primary;
    data['max_channels'] = this.maxChannels;
    data['max_channel_layout'] = this.maxChannelLayout;
    data['id'] = this.id;
    data['max_width'] = this.maxWidth;
    data['max_height'] = this.maxHeight;
    data['max_frame_rate'] = this.maxFrameRate;
    return data;
  }
}

class RecordingTimes {
  String? type;
  String? startedAt;
  double? duration;

  RecordingTimes({this.type, this.startedAt, this.duration});

  RecordingTimes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    startedAt = json['started_at'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['started_at'] = this.startedAt;
    data['duration'] = this.duration;
    return data;
  }
}

class PlaybackIds {
  String? policy;
  String? id;

  PlaybackIds({this.policy, this.id});

  PlaybackIds.fromJson(Map<String, dynamic> json) {
    policy = json['policy'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['policy'] = this.policy;
    data['id'] = this.id;
    return data;
  }
}
