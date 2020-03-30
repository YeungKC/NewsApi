// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    source: json['source'] == null
        ? null
        : Source.fromJson(json['source'] as Map<String, dynamic>),
    author: json['author'] as String,
    content: json['content'] as String,
    description: json['description'] as String,
    publishedAt:
        const DateTimeConverter().fromJson(json['publishedAt'] as String),
    title: json['title'] as String,
    url: json['url'] as String,
    urlToImage: json['urlToImage'] as String,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'content': instance.content,
      'description': instance.description,
      'publishedAt': const DateTimeConverter().toJson(instance.publishedAt),
      'title': instance.title,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
    };
