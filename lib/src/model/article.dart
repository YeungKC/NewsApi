import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:newsapi/src/model/source.dart';
import 'package:newsapi/src/util/date_time_converter.dart';

part 'article.g.dart';

@DateTimeConverter()
@JsonSerializable()
class Article with EquatableMixin {
  Source source;
  String? author;
  String content;
  String description;
  DateTime publishedAt;
  String title;
  String url;
  String urlToImage;

  Article({
    required this.source,
    required this.author,
    required this.content,
    required this.description,
    required this.publishedAt,
    required this.title,
    required this.url,
    required this.urlToImage,
  });

  @override
  List<Object?> get props => [
        source,
        author,
        content,
        description,
        publishedAt,
        title,
        url,
        urlToImage,
      ];

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
