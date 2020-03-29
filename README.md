# NewsApi

Use NewsApi service with Dart

## Install
dependencies:
    newsapi: any

## Example

```Dart
  var newsApi = NewsApi();
  newsApi.init(
//    dioOptions: dioOptions,
//    interceptors: interceptors,
    debugLog: true,
    apiKey: 'foo',
  );
  
  newsApi.apiKey = 'bar';

  print(await newsApi.topHeadlines(
//    country: country,
//    category: category,
//    sources: sources,
//    q: q,
    language: 'en',
//    pageSize: pageSize,
//    page: page,
  ));
  print(await newsApi.everything(
    q: 'flutter',
//    qInTitle: qInTitle,
//    sources: sources,
//    domains: domains,
//    excludeDomains: excludeDomains,
//    from: from, // support DateTime or String
//    to: to, // support DateTime or String
//    language: language,
//    sortBy: sortBy,
//    pageSize: pageSize,
//    page: page,
  ));
  print(await newsApi.sources(
//    category: category,
//    language: language,
//    country: country,
      ));
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
