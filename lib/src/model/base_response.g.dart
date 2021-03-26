// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return BaseResponse(
    code: json['code'] as String?,
    message: json['message'] as String?,
    status: BaseResponse.statusFromJson(json['status'] as String),
    totalResults: json['totalResults'] as int?,
  );
}

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': BaseResponse.statusToJson(instance.status),
      'totalResults': instance.totalResults,
    };
