import 'dart:convert';
import 'dart:io';

import 'package:http/io_client.dart';

class SentimentalAnalysisService {
  final _client = IOClient();
  final _baseUrl = "1a2f-35-192-97-235.ngrok.io";

  Future<Map<String, String>> getHeaders() async {
    Map<String, String> headers = {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    return headers;
  }

  Future<dynamic> getAnalysis(String comment) async {
    var uri = Uri.http(_baseUrl, '/');
    var headers = await getHeaders();

    var body = {'text': comment};

    var response =
        await _client.post(uri, headers: headers, body: jsonEncode(body));

    return response;
  }
}
