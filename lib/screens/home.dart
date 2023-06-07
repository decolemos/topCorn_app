import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:list_crud_firebase/services/api_service/api_response.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';
import 'package:list_crud_firebase/services/api_service/http_api_service.dart';

class HomePage extends StatelessWidget {

  final ApiService apiService;

  const HomePage({super.key, required this.apiService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TopCorn'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            ApiService httpApiService = HttpApiService();
            final ApiResponse response = await httpApiService.get("/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc'");
            log(response.body);
            log(response.statusCode.toString());
          }, 
          child: const Text("chamada de api")
        ),
      ),
    );
  }
}