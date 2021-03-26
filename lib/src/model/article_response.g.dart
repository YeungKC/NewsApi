// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) {
  return ArticleResponse(
    articles: (json['articles'] as List<dynamic>?)
        ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: BaseResponse.statusFromJson(json['status'] as String),
  )
    ..code = json['code'] as String?
    ..message = json['message'] as String?
    ..totalResults = json['totalResults'] as int?;
}

Map<String, dynamic> _$ArticleResponseToJson(ArticleResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': BaseResponse.statusToJson(instance.status),
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
