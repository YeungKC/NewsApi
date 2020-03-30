library newsapi;

import 'package:dio/dio.dart';
import 'package:newsapi/model/article_response.dart';
import 'package:newsapi/model/source_response.dart';
import 'package:newsapi/retrofit_client.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NewsApi {
  bool _init = false;
  Dio dio;
  RetrofitClient r;
  String _apiKey;

  static final NewsApi _instance = NewsApi._internal();

  factory NewsApi() => _instance;

  NewsApi._internal();

  set apiKey(key) {
    assert(_init);

    this._apiKey = key;
    dio.options.headers['Authorization'] = key;
  }

  init({
    String apiKey,
    BaseOptions dioOptions,
    List<Interceptor> interceptors,
    bool debugLog = false,
  }) {
    if (_init) return;
    _init = true;

    assert(apiKey != null);
    this._apiKey = apiKey;

    dioOptions ??= BaseOptions();
    dioOptions.responseType = ResponseType.json;
    dioOptions.contentType = Headers.jsonContentType;
    dioOptions.headers['Authorization'] = this._apiKey;

    dio = Dio(dioOptions);

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
      interceptors.forEach((interceptor) => dio.interceptors.add(interceptor));
    }

    r = RetrofitClient(dio);
  }

  Future<ArticleResponse> topHeadlines({
    String country,
    String category,
    String sources,
    String q,
    String language,
    int pageSize,
    int page,
  }) {
    return r.topHeadlines(
      country: country,
      category: category,
      sources: sources,
      q: q,
      language: language,
      pageSize: pageSize,
      page: page,
    );
  }

  Future<ArticleResponse> everything({
    String q,
    String qInTitle,
    String sources,
    String domains,
    String excludeDomains,
    dynamic from,
    dynamic to,
    String language,
    String sortBy,
    int pageSize,
    int page,
  }) {
    return r.everything(
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

  Future<SourceResponse> sources({
    String category,
    String language,
    String country,
  }) {
    return r.sources(
      category: category,
      language: language,
      country: country,
    );
  }
}
