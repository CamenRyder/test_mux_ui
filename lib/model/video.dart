import 'package:test_mux_ui/services/mux_assets.dart';

class Video {
  final String id;
  final String title;
  final String description;
  final String createAt;
  final String muxId;
  final MuxAsset? muxAsset;

  const Video(
      {required this.createAt,
      required this.description,
      required this.id,
      this.muxAsset,
      required this.muxId,
      required this.title});

  Video copyWith({
    String? id,
    String? title,
    String? description,
    String? createAt,
    String? muxId,
    MuxAsset? muxAsset,
  }) {
    return Video(
        createAt: createAt ?? this.createAt,
        description: description ?? this.description,
        id: id ?? this.id,
        muxId: muxId ?? this.muxId,
        muxAsset: muxAsset ?? this.muxAsset,
        title: title ?? this.title);
  }

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
        createAt: json['created_at'],
        description: json['description'],
        id: json['id'],
        muxId: json['muxId'],
        title: json['title']);
  }

  static List<Map<String, dynamic>> videoExamples = [
    {
      "id": "1",
      "muxId": "kvxYwJOMrNvjnckU9RQD01Htisf01rQu1BEiBEwP4s8GM",
      "created_at": "05/31/24",
      "title": "Aduu 132",
      "description": "Ab123"
    },
    {
      "id": "2",
      "muxId": "3vyqjZ8OZzKdoH01e01cNGgUMJUgNyKR02kQI6qCr5FnTo",
      "created_at": "05/31/24",
      "title": "Aduu 132",
      "description": "Ab123"
    },
    {
      "id": "3",
      "muxId": "lnxN46d5900C00549inPLubAuabUa5n9e9eOP6ZM99qoE",
      "created_at": "05/31/24",
      "title": "Aduu 132",
      "description": "Ab123"
    },
    {
      "id": "4",
      "muxId": "XwSLA019y3FcdnFeTOnd500zHvv00SxlkttNQSGjx2002jg",
      "created_at": "05/31/24",
      "title": "Aduu 132",
      "description": "Ab123"
    },
    {
      "id": "5",
      "muxId": "qmQk3oHgRC8xCZvebFUwI01CngKA29Nb00KH3PbJuWmeY",
      "created_at": "05/31/24",
      "title": "Aduu 132",
      "description": "Ab123"
    },
  ];
}
