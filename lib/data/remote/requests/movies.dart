 import 'package:dio/dio.dart';
import 'package:teest_apiiii/constants/constants_methods.dart';
import 'package:teest_apiiii/constants/end_points.dart';
import 'package:teest_apiiii/data/remote/data_providers/my_dio.dart';

import '../ressponses/movies.dart';

class MoviesRequest{
  Future moviesRequest({
   required String apiKey,
 })async{
    try {
       Response response = await MyDio.getData( endPoint: popularMovies,
query: {
         'api_key':apiKey
}
);
      printResponse(response.data.toString());
    return MoviesResponse.fromJson(response.data);
    }catch(e){
      printError("movies request $e");
    }
    }
 }