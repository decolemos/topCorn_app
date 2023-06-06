import 'package:flutter/material.dart';
import 'package:list_crud_firebase/screens/home.dart';
import 'package:list_crud_firebase/services/api_service/http_api_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(apiService: HttpApiService()),
    );
  }
}