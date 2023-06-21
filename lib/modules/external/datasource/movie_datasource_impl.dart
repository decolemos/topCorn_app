import 'package:list_crud_firebase/modules/domain/entity/movie.dart';

abstract class MovieDatasourceImpl {

  Future<List<Movie>> get();

}