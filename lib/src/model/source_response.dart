import 'package:json_annotation/json_annotation.dart';
import 'package:newsapi/src/model/base_response.dart';
import 'package:newsapi/src/model/source.dart';

part 'source_response.g.dart';

@JsonSerializable()
class SourceResponse extends BaseResponse {
  List<Source> sources;

  SourceResponse({this.sources});

  @override
  List<Object> get props => [
        ...super.props,
        this.sources,
      ];

  factory SourceResponse.fromJson(Map<String, dynamic> json) =>
      _$SourceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SourceResponseToJson(this);
}
