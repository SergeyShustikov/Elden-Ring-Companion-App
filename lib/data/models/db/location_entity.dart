import 'package:json_annotation/json_annotation.dart';

part 'location_entity.g.dart';

@JsonSerializable()
class LocationDataEntity {
  final List<LocationEntity> data;

  LocationDataEntity({required this.data});

  factory LocationDataEntity.fromJson(Map<String, dynamic> json) => _$LocationDataEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LocationDataEntityToJson(this);
}

@JsonSerializable()
class LocationEntity {
  final int id;
  final String name;
  final String? image;
  final int? regionId;

  LocationEntity(this.id, this.name, this.image, this.regionId);

  factory LocationEntity.fromJson(Map<String, dynamic> json) => _$LocationEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LocationEntityToJson(this);
}
