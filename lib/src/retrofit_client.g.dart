// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrofit_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RetrofitClient implements RetrofitClient {
  _RetrofitClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://newsapi.org/v2/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ArticleResponse> topHeadlines(
      {country, category, sources, q, language, pageSize, page}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'country': country,
      r'category': category,
      r'sources': sources,
      r'q': q,
      r'language': language,
      r'pageSize': pageSize,
      r'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request('top-headlines',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ArticleResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<ArticleResponse> everything(
      {q,
      qInTitle,
      sources,
      domains,
      excludeDomains,
      from,
      to,
      language,
      sortBy,
      pageSize,
      page}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': q,
      r'qInTitle': qInTitle,
      r'sources': sources,
      r'domains': domains,
      r'excludeDomains': excludeDomains,
      r'from': from,
      r'to': to,
      r'language': language,
      r'sortBy': sortBy,
      r'pageSize': pageSize,
      r'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request('everything',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ArticleResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<SourceResponse> sources({category, language, country}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'category': category,
      r'language': language,
      r'country': country
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request('sources',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SourceResponse.fromJson(_result.data);
    return value;
  }
}
