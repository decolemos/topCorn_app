import 'dart:convert';
import 'dart:developer';

import 'package:list_crud_firebase/modules/domain/entity/movie.dart';
import 'package:list_crud_firebase/services/api_service/api_response.dart';
import 'package:list_crud_firebase/services/api_service/api_service.dart';
import 'package:list_crud_firebase/services/api_service/http_api_service.dart';
import '../../external/datasource/movie_datasource_impl.dart';

class MovieDatasource implements MovieDatasourceImpl {

  ApiService apiService;

  MovieDatasource ({
    required this.apiService
  });

  @override
  Future <List<Movie>> get() async {

    List<Movie> listMovie = [];
      
    ApiResponse response = await apiService.get("/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc'");

    for(int index = 0; index < response.body['results'].length; index++) {
      listMovie.add(Movie(
        id: (response.body['results'][index]['id'].toString()), 
        name: (response.body['results'][index]['title']), 
        url: (response.body['results'][index]['poster_path']), 
        release: (response.body['results'][index]['release_date']), 
        rate: (response.body['results'][index]['vote_average'])
      ));
    }

    log(listMovie.toString());

      throw UnimplementedError();
  }

  

}