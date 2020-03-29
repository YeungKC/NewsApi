import 'package:json_annotation/json_annotation.dart';
import 'package:newsapi/model/article.dart';
import 'package:newsapi/model/base_response.dart';

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
        this.articles,
      ];

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleResponseToJson(this);
}
