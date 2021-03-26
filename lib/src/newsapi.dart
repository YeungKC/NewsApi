library newsapi;

import 'package:dio/dio.dart';
import 'package:newsapi/src/model/article_response.dart';
import 'package:newsapi/src/model/source_response.dart';
import 'package:newsapi/src/retrofit_client.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NewsApi {
  NewsApi({
    required String apiKey,
    BaseOptions? dioOptions,
    List<Interceptor>? interceptors,
    bool debugLog = false,
  }) {
    _apiKey = apiKey;

    dioOptions ??= BaseOptions();
    dioOptions.responseType = ResponseType.json;
    dioOptions.contentType = Headers.jsonContentType;
    dioOptions.headers['Authorization'] = _apiKey;

    _dio = Dio(dioOptions);

    if (debugLog) {
      (interceptors ??= []).add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 128,
        ),
      );
    }
    if (interceptors != null && interceptors.isNotEmpty) {
      interceptors.forEach((interceptor) => _dio.interceptors.add(interceptor));
    }

    _r = RetrofitClient(_dio);
  }

  late Dio _dio;
  late RetrofitClient _r;
  late String _apiKey;

  /// you can change the key at any time
  set apiKey(key) {
    _apiKey = key;
    _dio.options.headers['Authorization'] = key;
  }

  String get apiKey => _apiKey;

  /// see more: https://newsapi.org/docs/endpoints/top-headlines
  Future<ArticleResponse> topHeadlines({
    String? country,
    String? category,
    String? sources,
    String? q,
    String? language,
    int? pageSize,
    int? page,
  }) =>
      _r.topHeadlines(
        country: country,
        category: category,
        sources: sources,
        q: q,
        language: language,
        pageSize: pageSize,
        page: page,
      );

  /// see more: https://newsapi.org/docs/endpoints/everything
  Future<ArticleResponse> everything({
    String? q,
    String? qInTitle,
    String? sources,
    String? domains,
    String? excludeDomains,
    dynamic from,
    dynamic to,
    String? language,
    String? sortBy,
    int? pageSize,
    int? page,
  }) {
    if (from != null) assert(from is DateTime || from is String);
    if (to != null) assert(to is DateTime || to is String);

    return _r.everything(
      q: q,
      qInTitle: qInTitle,
      sources: sources,
      domains: domains,
      excludeDomains: excludeDomains,
      from: from is DateTime ? from.toIso8601String() : from,
      to: to is DateTime ? to.toIso8601String() : to,
      language: language,
      sortBy: sortBy,
      pageSize: pageSize,
      page: page,
    );
  }

  /// see more: https://newsapi.org/docs/endpoints/sources
  Future<SourceResponse> sources({
    String? category,
    String? language,
    String? country,
  }) =>
      _r.sources(
        category: category,
        language: language,
        country: country,
      );
}
