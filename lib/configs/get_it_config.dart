import 'package:get_it/get_it.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';
import 'package:list_crud_firebase/services/api_service/dio_api_service.dart';
import 'package:list_crud_firebase/services/api_service/http_api_service.dart';

class GetItConfig {
  init(){
    final getIt = GetIt.I;
    getIt.registerFactory<ApiService>(() => DioApiService());
    getIt.registerFactory<String>(() => 'hello world');
  }
}