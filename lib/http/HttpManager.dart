import 'package:dio/dio.dart';
import 'package:flutter_app_demo/http/UrlManager.dart';

class HttpManager {
  static const CONTENT_TYPE_JSON = "application/json";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";

  Options options;

  HttpManager() {
    options = new Options(
        baseUrl: UrlManager.test, connectTimeout: 5000, receiveTimeout: 3000);
  }





}
