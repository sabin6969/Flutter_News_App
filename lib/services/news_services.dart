import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_news_app/constants/app_constants.dart';
import 'package:flutter_news_app/exceptions/custom_exceptions.dart';
import 'package:flutter_news_app/models/news_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

class NewsServices {
  static Future<NewsModel> fetchNews({required String category}) async {
    final String? apiKey = dotenv.env['VAR_NAME'];
    Response response = await get(
        Uri.parse("${AppConstants.baseURL}&category=$category&apiKey=$apiKey"));
    var data = getResponse(response);
    return NewsModel.fromJson(data);
  }

  static getResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 500:
        throw InternalServerError();
      case 404:
        throw ClientError();
      case 400:
        throw BadRequestException();
      default:
        throw UnknownError();
    }
  }
}
