// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationDataEntity _$LocationDataEntityFromJson(Map<String, dynamic> json) =>
    LocationDataEntity(
      data: (json['data'] as List<dynamic>)
          .map((e) => LocationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationDataEntityToJson(LocationDataEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

LocationEntity _$LocationEntityFromJson(Map<String, dynamic> json) =>
    LocationEntity(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['image'] as String?,
      (json['regionId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LocationEntityToJson(LocationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'regionId': instance.regionId,
    };
