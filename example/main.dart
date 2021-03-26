import 'package:newsapi/newsapi.dart';

void main() async {
  var newsApi = NewsApi(
    //  dioOptions: dioOptions,
    //  interceptors: interceptors,
    debugLog: true,
    apiKey: 'foo',
  );

  newsApi.apiKey = 'Change_your_api_key';

  var topHeadlines = await newsApi.topHeadlines(
//    country: country,
//    category: category,
//    sources: sources,
//    q: q,
    language: 'en',
//    pageSize: pageSize,
//    page: page,
  );

  // ArticleResponse
  print(topHeadlines);

  var everything = await newsApi.everything(
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
  // ArticleResponse
  print(everything);

  var sources = await newsApi.sources(
//    category: category,
//    language: language,
//    country: country,
      );
  // SourceResponse
  print(sources);
}
