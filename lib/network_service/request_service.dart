import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';



class ApiHelper {
  final String _rootUrl = 'http://192.168.43.23:8000/api/v1';
  final storage = const FlutterSecureStorage();
  late Map<String,String> token;
  apiService() {
    getToken();
  }

  getToken() async {
    String accessToken = await storage.read(key: "accessToken") ?? "";
    String refreshToken = await storage.read(key: "refreshToken") ?? "";
    token = {
      "accessToken" : accessToken,
      "refreshToken": refreshToken
    };
    return token;
  }

  _setHeadersWithAuth() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
    'Authorization' : 'Bearer ${token['accessToken']}'
  };

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
  };

  postData(data,apiUrl) async {
    try {
      var fullUrl = _rootUrl + apiUrl;
      return await http.post(
          convertFromString(fullUrl),
          body: jsonEncode(data),
          headers: _setHeaders()
      ).timeout(const Duration(seconds: 5));
    } on TimeoutException catch (value) {
      return http.Response(value.toString(), 408);
    }
  }

  postDataWithAuth(data, apiUrl) async {
    var fullUrl = _rootUrl + apiUrl;
    return await http.post(
        convertFromString(fullUrl),
        body: jsonEncode(data),
        headers: _setHeadersWithAuth()
    );
  }

  getDataWithAuth(apiUrl,[data]) async {
    var fullUrl = _rootUrl + apiUrl;
    await getToken();
    return await http.get(
        convertFromString(fullUrl),
        headers: _setHeadersWithAuth()
    );
  }

  Uri convertFromString(String text) {
    Uri uri = Uri.parse(text);
    return uri;
  }
}