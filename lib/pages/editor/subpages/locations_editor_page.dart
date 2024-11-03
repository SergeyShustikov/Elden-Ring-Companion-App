import 'package:elden_ring_companion_app/data/common/display_style.dart';
import 'package:elden_ring_companion_app/data/repository/location_repository.dart';
import 'package:elden_ring_companion_app/injector.dart';
import 'package:elden_ring_companion_app/pages/editor/subpages/edit_location_page.dart';
import 'package:elden_ring_companion_app/pages/editor/widgets/material_ink_well.dart';
import 'package:elden_ring_companion_app/utils/router_utils.dart';
import 'package:flutter/material.dart';

class LocationsEditorPage extends StatefulWidget {
  const LocationsEditorPage({super.key});

  @override
  State<LocationsEditorPage> createState() => _LocationsEditorPageState();
}

class _LocationsEditorPageState extends State<LocationsEditorPage> {
  LocationRepository repository = injector();

  final DisplayStyle _displayStyle = DisplayStyle.list;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: repository
          .getAll()
          .map(
            (e) => SizedBox.square(
              dimension: 200,
              child: Card(
                child: MaterialInkWell(
                  onTap: () {
                    Navigator.of(context).push(route(EditLocationPage(entity: e)));
                  },
                  child: Column(
                    children: [
                      Text(e.name),
                      Text("${e.id}"),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
