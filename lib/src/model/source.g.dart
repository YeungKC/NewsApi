// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(Map<String, dynamic> json) {
  return Source(
    category: json['category'] as String?,
    country: json['country'] as String?,
    description: json['description'] as String?,
    id: json['id'] as String?,
    language: json['language'] as String?,
    name: json['name'] as String,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'category': instance.category,
      'country': instance.country,
      'description': instance.description,
      'id': instance.id,
      'language': instance.language,
      'name': instance.name,
      'url': instance.url,
    };
