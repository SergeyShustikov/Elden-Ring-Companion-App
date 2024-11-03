// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:elden_ring_companion_app/data/models/db/region_entity.dart';
import 'package:flutter/services.dart';

class RegionRepository {
  final String db_path = "assets/regions.json";
  final List<RegionEntity> _regions = [];

  Future<void> initialize() async {
    var data = await rootBundle.loadString(db_path);
    var map = jsonDecode(data);
    _regions.addAll(RegionsDataEntity.fromJson(map).data);
  }

  void updateRegion(int id, RegionEntity object) {
    _regions.removeWhere((element) => element.id == id);
    _regions.add(object);
  }

  void refresh() {
    initialize();
  }

  List<RegionEntity> getAll() => List.unmodifiable(_regions);
}
