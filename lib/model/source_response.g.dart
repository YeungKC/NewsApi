// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceResponse _$SourceResponseFromJson(Map<String, dynamic> json) {
  return SourceResponse(
    sources: (json['sources'] as List)
        ?.map((e) =>
            e == null ? null : Source.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..code = json['code'] as String
    ..message = json['message'] as String
    ..status = BaseResponse.statusFromJson(json['status'] as String)
    ..totalResults = json['totalResults'] as int;
}

Map<String, dynamic> _$SourceResponseToJson(SourceResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': BaseResponse.statusToJson(instance.status),
      'totalResults': instance.totalResults,
      'sources': instance.sources,
    };
