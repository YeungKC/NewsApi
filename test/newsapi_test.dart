import 'dart:io';

import 'package:dio/dio.dart';
import 'package:newsapi/newsapi.dart';
import 'package:test/test.dart';

void main() {
  late NewsApi newsApi;
  group('test newsApi', () {
    test('key is not available', () async {
      newsApi = NewsApi(apiKey: 'foo');

      try {
        await newsApi.topHeadlines(language: 'en');
      } catch (e) {
        expect(e, isA<DioError>());
        expect((e as DioError).response!.statusCode, equals(401));
      }
    });

    test('change key', () async {
      newsApi.apiKey = Platform.environment['API_KEY'];

      var response = await newsApi.topHeadlines(language: 'en');
      expect(response.status, isTrue);
    });

    test('DateTime converter', () async {
      var response = await newsApi.everything(
        to: DateTime.now()..subtract(Duration(days: 30)),
        q: 'flutter',
      );

      expect(response.status, isTrue);
    });

    test('sources', () async {
      var response = await newsApi.sources();
      expect(response.status, isTrue);
    });
  });
}
