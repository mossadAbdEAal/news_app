import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class Newsservices {
  final dio = Dio();
  String? category;

  Future<List<Articlemodel>> getnews(String? category) async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=6b935dfdad9648df8547b0e1fa4e07fb&category=$category');

    Map<String, dynamic> jsondata = response.data;

    List<dynamic> articles = jsondata['articles'];

    List<Articlemodel> articlelistmodel = [];

    for (var article in articles) {
      Articlemodel articlemodel = Articlemodel.fromjson(article);
      articlelistmodel.add(articlemodel);
    }
    return articlelistmodel;
  }
}
