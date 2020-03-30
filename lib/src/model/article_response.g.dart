// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) {
  return ArticleResponse(
    articles: (json['articles'] as List)
        ?.map((e) =>
            e == null ? null : Article.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..code = json['code'] as String
    ..message = json['message'] as String
    ..status = BaseResponse.statusFromJson(json['status'] as String)
    ..totalResults = json['totalResults'] as int;
}

Map<String, dynamic> _$ArticleResponseToJson(ArticleResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': BaseResponse.statusToJson(instance.status),
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
