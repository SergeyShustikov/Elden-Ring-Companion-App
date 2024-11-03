import 'dart:convert';

import 'package:elden_ring_companion_app/data/models/db/location_entity.dart';
import 'package:flutter/services.dart';

class LocationRepository {
  final String db_path = "assets/locations.json";
  final List<LocationEntity> _locations = [];

  Future<void> initialize() async {
    var data = await rootBundle.loadString(db_path);
    var map = jsonDecode(data);
    _locations.addAll(LocationDataEntity.fromJson(map).data);
  }

  void updateLocation(int id, LocationEntity object) {
    _locations.removeWhere((element) => element.id == id);
    _locations.add(object);
  }

  void refresh() {
    initialize();
  }

  List<LocationEntity> getAll() => List.unmodifiable(_locations);
}
