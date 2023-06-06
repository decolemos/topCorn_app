import 'package:list_crud_firebase/services/api_service/api_response.dart';

abstract class ApiService {
  
  Future<ApiResponse> get(String path);

  Future<ApiResponse> post(String path, dynamic body);

}