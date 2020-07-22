import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse with EquatableMixin {
  String code;
  String message;
  @JsonKey(
    fromJson: statusFromJson,
    toJson: statusToJson,
  )
  bool status;
  int totalResults;

  BaseResponse({
    this.code,
    this.message,
    this.status,
    this.totalResults,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  @override
  List<Object> get props => [
        this.code,
        this.message,
        this.status,
        this.totalResults,
      ];

  static statusFromJson(String json) => json == 'ok';
  static statusToJson(bool status) => status ? 'ok' : 'error';
}
