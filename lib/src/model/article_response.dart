import 'package:json_annotation/json_annotation.dart';
import 'package:newsapi/src/model/article.dart';
import 'package:newsapi/src/model/base_response.dart';

part 'article_response.g.dart';

@JsonSerializable()
class ArticleResponse extends BaseResponse {
  List<Article> articles;

  ArticleResponse({
    this.articles,
  });

  @override
  List<Object> get props => [
        ...super.props,
        articles,
      ];

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ArticleResponseToJson(this);
}
