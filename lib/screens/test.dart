import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';

import '../services/api_service/api_response.dart';

class TestHome extends StatelessWidget {
  
  final ApiService apiService;

  const TestHome({super.key, required this.apiService});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final ApiResponse response = await apiService.get("/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc'");
            log(response.body.toString());
            log(response.statusCode.toString());
          }, 
          child: const Text('Chamada de API')),
      ),
    );
  }
}