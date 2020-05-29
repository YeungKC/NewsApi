# NewsApi

[![Pub](https://img.shields.io/pub/v/newsapi.svg)](https://pub.dartlang.org/packages/newsapi)
![Dart CI](https://github.com/YeungKC/NewsApi/workflows/Dart%20CI/badge.svg)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/33b83ba4c6834d5a9c76a1b6dfb61bd8)](https://www.codacy.com/manual/YeungKC/NewsApi?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=YeungKC/NewsApi&amp;utm_campaign=Badge_Grade)

Use NewsApi service with Dart

## Install
```yaml
dependencies:
    newsapi: ^1.0.4
```


## Example

```Dart
  var newsApi = NewsApi();
  newsApi.init(
//    dioOptions: dioOptions,
//    interceptors: interceptors,
    debugLog: true,
    apiKey: 'foo',
  );

  newsApi.apiKey = 'Change_your_api_key';

  ArticleResponse topHeadlines = await newsApi.topHeadlines(
//    country: country,
//    category: category,
//    sources: sources,
//    q: q,
    language: 'en',
//    pageSize: pageSize,
//    page: page,
  );
  print(topHeadlines);
  ArticleResponse everything = await newsApi.everything(
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
  );
  print(everything);
  SourceResponse sources = await newsApi.sources(
//    category: category,
//    language: language,
//    country: country,
      );
  print(sources);
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

class ArticleResponse extends BaseResponse {
  List<Article> articles;
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

class SourceResponse extends BaseResponse {
  List<Source> sources;
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
```bash
API_KEY=YOUR_API_KEY pub run test
```
