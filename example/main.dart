import 'package:newsapi/newsapi.dart';

main() async {
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
}
