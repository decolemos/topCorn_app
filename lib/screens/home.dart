import 'package:flutter/material.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';

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
          onPressed: () {
            
          }, 
          child: const Text("chamada de api")
        ),
      ),
    );
  }
}