
import 'package:dio/dio.dart';
import 'package:ui/model/news_model.dart';

class NewsService {
   Future<dynamic> getNews() async {
    try {
      Response response = await Dio().get("http://192.168.42.35:4000/news");
      if (response.statusCode == 200) {
        return NewsModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}