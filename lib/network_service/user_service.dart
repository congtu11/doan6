import 'dart:convert';

import 'package:daoan6/models/access_token.dart';
import 'package:daoan6/network_service/request_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart';

class UserService {
  late ApiHelper apiHelper;
  late FlutterSecureStorage _storage;

 late int STATUS_CODE;
 late String msg;

  UserService() {
    init();
  }

  void init() async {
    bool internetConnection = await checkInternetConnectivity();
    if(internetConnection) {
      _storage = FlutterSecureStorage();
      apiHelper = ApiHelper();
    }

  }



  void storeToken(String accessToken, refreshToken) async{
    await _storage.write(key: 'accessToken', value: accessToken);
    await _storage.write(key: 'refreshToken', value: refreshToken);
  }

  Future<dynamic> login(userValues) async {
    AccessToken token;
    var data = {
      'email' : userValues['email'],
      'password' : userValues['password']
    };
    Response res = await apiHelper.postData(data, "/login");
    if(res.statusCode == 200) {
      token = AccessToken.fromJson(json.decode(res.body));
      storeToken(token.accessToken, token.refreshToken);
      STATUS_CODE = 200;
      return STATUS_CODE;
    }
    else if(res.statusCode == 408) {
      STATUS_CODE = 408;
      return STATUS_CODE;
    }
    else {
      STATUS_CODE = 401;
      return STATUS_CODE;
    }

  }

  Future<dynamic> register(userValues) async {

    var data = {
      'name' :  userValues['name'],
      'email' : userValues['email'],
      'password' : userValues['password'],
      'c_password' : userValues['c_password']
    };
    Response res = await apiHelper.postData(data, "/register");
    if(res.statusCode == 200 ) {
      STATUS_CODE = 200;
    return STATUS_CODE;
    }
    else if(res.statusCode == 408) {
      STATUS_CODE = 408;
      return STATUS_CODE;
    }
    else {
      STATUS_CODE = 401;
      return STATUS_CODE;
    }
  }

  Future<bool> checkInternetConnectivity() async{
    final Connectivity _connectivity = Connectivity();
    ConnectivityResult result = await _connectivity.checkConnectivity();
    String connection = getConnectionValue(result);
    if(connection == 'None') {
      return false;
    }
    else{
      return true;
    }
  }
  String getConnectionValue(var connectivityResult) {
    String status = '';
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        status = 'Mobile';
        break;
      case ConnectivityResult.wifi:
        status = 'Wi-Fi';
        break;
      case ConnectivityResult.none:
        status = 'None';
        break;
      default:
        status = 'None';
        break;
    }
    return status;
  }

  get statusCode => STATUS_CODE;

}