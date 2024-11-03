import 'package:json_annotation/json_annotation.dart';

part 'region_entity.g.dart';

@JsonSerializable()
class RegionsDataEntity {
  final List<RegionEntity> data;

  RegionsDataEntity({required this.data});

  factory RegionsDataEntity.fromJson(Map<String, dynamic> json) => _$RegionsDataEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RegionsDataEntityToJson(this);
}

@JsonSerializable()
class RegionEntity {
  final int id;
  final String name;
  final String? image;
  final List<int> locationIds;

  RegionEntity(this.id, this.name, this.image, this.locationIds);
  factory RegionEntity.fromJson(Map<String, dynamic> json) => _$RegionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RegionEntityToJson(this);
}
