import 'dart:convert';

import 'package:http/http.dart' as http;

class VideoClient {
  final http.Client _client;

  VideoClient({http.Client? client}) : _client = client ?? http.Client();

  static const muxStreamClientURL = "https://stream.mux.com";

  static const videoExtension = ".m3u8";

  Future<Map<String, dynamic>> getMuxAssets() async {
    final muxTokenId = "965c6811-298b-4945-90be-21f98db90354";
    final muxSecretKey =
        "nqZV0TtEir2rBTxNqK5KoZ2cgiZ4e8VD0NxWymO7U7fv8N8E/0ROx6CfUmwPibWBNLl3XkGpF3N";
    final response = await _client.get(
        Uri.parse("https://api.mux.com/video/v1/assets"),
        headers: <String, String>{
          "Content-Type": "application/json",
          "Authorization":
              "Basic ${base64Encode(utf8.encode("$muxTokenId:$muxSecretKey"))}"
        });
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Fail to load assets');
    }
  }



  Future<Map<String, dynamic>> getMuxAsset(String assets) async {
    final muxTokenId = "965c6811-298b-4945-90be-21f98db90354";
    final muxSecretKey =
        "nqZV0TtEir2rBTxNqK5KoZ2cgiZ4e8VD0NxWymO7U7fv8N8E/0ROx6CfUmwPibWBNLl3XkGpF3N";
    final response = await _client.get(
        Uri.parse("https://api.mux.com/video/v1/assets/$assets"),
        headers: <String, String>{
          "Content-Type": "application/json",
          "Authorization":
              "Basic ${base64Encode(utf8.encode("$muxTokenId:$muxSecretKey"))}"
        });
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Fail to load asset form Mux');
    }
  }
}
