import 'dart:async';
import 'package:blocPatternExample/src/models/item_model.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '2c0d91a99ba3c0f9eff2bfac0be8848a';

  Future<ItemModel> fetchMovieList() async {
    print('entered');
    final response = await client
        .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");

    print(response.body.toString());

    if (response.statusCode == 200) {
      return ItemModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
