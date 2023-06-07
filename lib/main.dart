import 'package:flutter/material.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';
import 'package:list_crud_firebase/services/api_service/dio_api_service.dart';
import 'package:list_crud_firebase/services/api_service/http_api_service.dart';

import 'configs/app.dart';

void main() {
  runApp(const MyApp());

  ApiService apiService = HttpApiService();
  // ApiService apiService = DioApiService();
}

