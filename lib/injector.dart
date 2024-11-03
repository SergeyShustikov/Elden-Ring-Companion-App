import 'package:elden_ring_companion_app/data/repository/location_repository.dart';
import 'package:elden_ring_companion_app/data/repository/region_repository.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  var regionRepository = RegionRepository();
  await regionRepository.initialize();

  injector.registerSingleton(regionRepository);

  var locationRepository = LocationRepository();
  await locationRepository.initialize();

  injector.registerSingleton(locationRepository);
}
