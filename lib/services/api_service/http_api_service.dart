import 'dart:convert';

import 'package:list_crud_firebase/services/api_service/api_response.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';
import 'package:http/http.dart' as http;

class HttpApiService implements ApiService{

  final _url = "https://api.themoviedb.org";

  @override
  Future<ApiResponse> get(String path) async {
    
    final apiResponse = await http.get(Uri.parse(_url + path), headers: {"Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0NzhjYWUwOWFhY2VlNDA5NWRhYjNmODhlOWUyZWQ0OSIsInN1YiI6IjY0N2YzZWJkOTM4MjhlMDBiZmEwMTJhNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.R0wh_xeU0qHtIvlc4Yo-BtsMKw1h9l6QxV7t8o6k_Rc"});
    
    final jsonApiResponse = jsonDecode(apiResponse.body);

    return ApiResponse(body: jsonApiResponse, statusCode: apiResponse.statusCode);
    
  }

  @override
  Future<ApiResponse> post(String path, body) async {

    final apiResponse = await http.post(Uri.parse(_url));
    // final jsonApiResponse = jsonEncode(body);

    return ApiResponse(body: body, statusCode: apiResponse.statusCode);
  }

}