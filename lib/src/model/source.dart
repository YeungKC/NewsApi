import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'source.g.dart';

@JsonSerializable()
class Source with EquatableMixin {
  String category;
  String country;
  String description;
  String id;
  String language;
  String name;
  String url;

  Source({
    this.category,
    this.country,
    this.description,
    this.id,
    this.language,
    this.name,
    this.url,
  });

  @override
  List<Object> get props => [
        category,
        country,
        description,
        id,
        language,
        name,
        url,
      ];

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
