# NewsApi

Use NewsApi service with Dart

## Install
dependencies:
    newsapi: any

## Example

```Dart
      NewsApi newsApi = NewsApi();
      newsApi.init(
        debugLog: true,
        apiKey: 'API_KEY',
      );

      ... = await newsApi.topHeadlines(language: 'en', ...);
      ... = await newsApi.topHeadlines(to: DateTime.now(), ...);
      ... = await newsApi.sources();
```

## Response Structure

```dart
class BaseResponse extends Equatable {
  String code;
  String message;
  @JsonKey(
    fromJson: statusFromJson,
    toJson: statusToJson,
  )
  bool status;
  int totalResults;
}

class Article extends Equatable {
  Source source;
  String author;
  String content;
  String description;
  DateTime publishedAt;
  String title;
  String url;
  String urlToImage;
}

class Source extends Equatable {
  String category;
  String country;
  String description;
  String id;
  String language;
  String name;
  String url;
}
```

## Start Test
Modify test / api_key.dart
```dart
const API_KEY = 'API_KEY';
```

and start
```bash
flutter --no-color test --machine test/newsapi_test.dart
```
