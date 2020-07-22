import 'package:dio/dio.dart';
import 'package:newsapi/src/model/article_response.dart';
import 'package:newsapi/src/model/source_response.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_client.g.dart';

@RestApi(baseUrl: 'https://newsapi.org/v2/')
abstract class RetrofitClient {
  factory RetrofitClient(Dio dio, {String baseUrl}) = _RetrofitClient;

  @GET('top-headlines')
  Future<ArticleResponse> topHeadlines({
    @Query('country') String country,
    @Query('category') String category,
    @Query('sources') String sources,
    @Query('q') String q,
    @Query('language') String language,
    @Query('pageSize') int pageSize,
    @Query('page') int page,
  });

  @GET('everything')
  Future<ArticleResponse> everything({
    @Query('q') String q,
    @Query('qInTitle') String qInTitle,
    @Query('sources') String sources,
    @Query('domains') String domains,
    @Query('excludeDomains') String excludeDomains,
    @Query('from') String from,
    @Query('to') String to,
    @Query('language') String language,
    @Query('sortBy') String sortBy,
    @Query('pageSize') int pageSize,
    @Query('page') int page,
  });

  @GET('sources')
  Future<SourceResponse> sources({
    @Query('category') String category,
    @Query('language') String language,
    @Query('country') String country,
  });
}
