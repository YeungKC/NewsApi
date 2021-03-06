import 'package:json_annotation/json_annotation.dart';
import 'package:newsapi/src/model/base_response.dart';
import 'package:newsapi/src/model/source.dart';

part 'source_response.g.dart';

@JsonSerializable()
class SourceResponse extends BaseResponse {
  List<Source>? sources;

  SourceResponse({
    this.sources,
    required bool status,
  }) : super(status: status);

  @override
  List<Object?> get props => [
        ...super.props,
        sources,
      ];

  factory SourceResponse.fromJson(Map<String, dynamic> json) =>
      _$SourceResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SourceResponseToJson(this);
}
