import 'package:elden_ring_companion_app/data/common/display_style.dart';
import 'package:elden_ring_companion_app/data/repository/region_repository.dart';
import 'package:elden_ring_companion_app/injector.dart';
import 'package:elden_ring_companion_app/pages/editor/subpages/edit_region_page.dart';
import 'package:elden_ring_companion_app/pages/editor/widgets/material_ink_well.dart';
import 'package:elden_ring_companion_app/utils/router_utils.dart';
import 'package:flutter/material.dart';

class RegionsEditorPage extends StatefulWidget {
  const RegionsEditorPage({super.key});

  @override
  State<RegionsEditorPage> createState() => _RegionsEditorPageState();
}

class _RegionsEditorPageState extends State<RegionsEditorPage> {
  RegionRepository repository = injector();

  final DisplayStyle _displayStyle = DisplayStyle.list;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: repository
            .getAll()
            .map(
              (e) => SizedBox(
                height: 300,
                width: 300,
                child: Card(
                    child: MaterialInkWell(
                  onTap: () {
                    Navigator.of(context).push(route(EditRegionPage(entity: e)));
                  },
                  child: Column(
                    children: [
                      Text(e.name),
                      Text("${e.id}"),
                    ],
                  ),
                )),
              ),
            )
            .toList(),
      ),
    );
  }
}
