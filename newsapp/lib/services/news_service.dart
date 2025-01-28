import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      final response = await dio.get(
          "https://newsdata.io/api/1/latest?apikey=pub_66777109d22bbaf939c97258e287b5bde7083&language=en&country=us&image=1&removeduplicate=1&category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['image_url'],
          title: article['title'],
          subTitle: article['description'],
          articleUrl: article['link'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
