import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:newsapi/model/source.dart';
import 'package:newsapi/util/date_time_converter.dart';

part 'article.g.dart';

@DateTimeConverter()
@JsonSerializable()
class Article extends Equatable {
  Source source;
  String author;
  String content;
  String description;
  DateTime publishedAt;
  String title;
  String url;
  String urlToImage;

  Article({
    this.source,
    this.author,
    this.content,
    this.description,
    this.publishedAt,
    this.title,
    this.url,
    this.urlToImage,
  });

  @override
  List<Object> get props => [
        this.source,
        this.author,
        this.content,
        this.description,
        this.publishedAt,
        this.title,
        this.url,
        this.urlToImage,
      ];

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
