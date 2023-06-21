import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:list_crud_firebase/services/api_service/api_response.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';

class DioApiService implements ApiService{

  final _url = "https://api.themoviedb.org";

  @override
  Future<ApiResponse> get(String path) async {
    final dio = Dio();
    dio.options.headers["Authorization"] = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0NzhjYWUwOWFhY2VlNDA5NWRhYjNmODhlOWUyZWQ0OSIsInN1YiI6IjY0N2YzZWJkOTM4MjhlMDBiZmEwMTJhNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.R0wh_xeU0qHtIvlc4Yo-BtsMKw1h9l6QxV7t8o6k_Rc";
    final apiResponse = await dio.get(_url + path);

    log('DIO');

    return ApiResponse(body: apiResponse.data, statusCode: apiResponse.statusCode ?? 500);

  }

  @override
  Future<ApiResponse> post(String path, body) {
    // TODO: implement post
    throw UnimplementedError();
  }

}