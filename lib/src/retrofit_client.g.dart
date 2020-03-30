// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrofit_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RetrofitClient implements RetrofitClient {
  _RetrofitClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://newsapi.org/v2/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  topHeadlines(
      {country, category, sources, q, language, pageSize, page}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'country': country,
      'category': category,
      'sources': sources,
      'q': q,
      'language': language,
      'pageSize': pageSize,
      'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'top-headlines',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ArticleResponse.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  everything(
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
      'q': q,
      'qInTitle': qInTitle,
      'sources': sources,
      'domains': domains,
      'excludeDomains': excludeDomains,
      'from': from,
      'to': to,
      'language': language,
      'sortBy': sortBy,
      'pageSize': pageSize,
      'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'everything',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ArticleResponse.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  sources({category, language, country}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'category': category,
      'language': language,
      'country': country
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('sources',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SourceResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
