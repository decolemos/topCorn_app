import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:list_crud_firebase/screens/home.dart';
import 'package:list_crud_firebase/screens/test.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';
import 'package:list_crud_firebase/services/api_service/http_api_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(apiService: GetIt.I.get<ApiService>()),
      routes: {
        '/test':(context) => TestHome(apiService: GetIt.I.get<ApiService>())
      },
    );
  }
}