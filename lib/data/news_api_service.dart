import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';

import '../model/built_news.dart';
import 'built_value_converter.dart';

part 'news_api_service.chopper.dart';

@ChopperApi(baseUrl: "https://learnappmaking.com/ex/news/articles/Apple")
abstract class NewsApiService extends ChopperService {
  /// This method fetches all the news from the API
  @Get()
  Future<Response<BuiltList<BuiltNews>>> getNews({
    @Query("secret") secret = "CHWGk3OTwgObtQxGqdLvVhwji6FsYm95oe87o3ju",
  });

  static NewsApiService create() {
    final client = ChopperClient(
      services: [
        _$NewsApiService(),
      ],
      // converter: JsonConverter(),
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );
    return _$NewsApiService(client);
  }
}
