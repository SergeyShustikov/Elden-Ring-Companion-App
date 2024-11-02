// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegionsDataEntity _$RegionsDataEntityFromJson(Map<String, dynamic> json) =>
    RegionsDataEntity(
      data: (json['data'] as List<dynamic>)
          .map((e) => RegionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegionsDataEntityToJson(RegionsDataEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

RegionEntity _$RegionEntityFromJson(Map<String, dynamic> json) => RegionEntity(
      (json['id'] as num).toInt(),
      json['name'] as String,
    );

Map<String, dynamic> _$RegionEntityToJson(RegionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
