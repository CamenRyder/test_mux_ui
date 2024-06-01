class VideoUpload {
  String? uploadId;
  List<Tracks>? tracks;
  bool? test;
  String? status;
  String? resolutionTier;
  List<PlaybackIds>? playbackIds;
  String? mp4Support;
  String? maxStoredResolution;
  double? maxStoredFrameRate;
  String? maxResolutionTier;
  String? masterAccess;
  String? ingestType;
  String? id;
  String? encodingTier;
  double? duration;
  String? createdAt;
  String? aspectRatio;

  VideoUpload(
      {this.uploadId,
      this.tracks,
      this.test,
      this.status,
      this.resolutionTier,
      this.playbackIds,
      this.mp4Support,
      this.maxStoredResolution,
      this.maxStoredFrameRate,
      this.maxResolutionTier,
      this.masterAccess,
      this.ingestType,
      this.id,
      this.encodingTier,
      this.duration,
      this.createdAt,
      this.aspectRatio});

  VideoUpload.fromJson(Map<String, dynamic> json) {
    uploadId = json['upload_id'];
    if (json['tracks'] != null) {
      tracks = <Tracks>[];
      json['tracks'].forEach((v) {
        tracks!.add(new Tracks.fromJson(v));
      });
    }
    test = json['test'];
    status = json['status'];
    resolutionTier = json['resolution_tier'];
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
    ingestType = json['ingest_type'];
    id = json['id'];
    encodingTier = json['encoding_tier'];
    duration = json['duration'];
    createdAt = json['created_at'];
    aspectRatio = json['aspect_ratio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['upload_id'] = this.uploadId;
    if (this.tracks != null) {
      data['tracks'] = this.tracks!.map((v) => v.toJson()).toList();
    }
    data['test'] = this.test;
    data['status'] = this.status;
    data['resolution_tier'] = this.resolutionTier;
    if (this.playbackIds != null) {
      data['playback_ids'] = this.playbackIds!.map((v) => v.toJson()).toList();
    }
    data['mp4_support'] = this.mp4Support;
    data['max_stored_resolution'] = this.maxStoredResolution;
    data['max_stored_frame_rate'] = this.maxStoredFrameRate;
    data['max_resolution_tier'] = this.maxResolutionTier;
    data['master_access'] = this.masterAccess;
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
  int? maxWidth;
  int? maxHeight;
  double? maxFrameRate;
  String? id;
  double? duration;

  Tracks(
      {this.type,
      this.maxWidth,
      this.maxHeight,
      this.maxFrameRate,
      this.id,
      this.duration});

  Tracks.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    maxWidth = json['max_width'];
    maxHeight = json['max_height'];
    maxFrameRate = json['max_frame_rate'];
    id = json['id'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['max_width'] = this.maxWidth;
    data['max_height'] = this.maxHeight;
    data['max_frame_rate'] = this.maxFrameRate;
    data['id'] = this.id;
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
