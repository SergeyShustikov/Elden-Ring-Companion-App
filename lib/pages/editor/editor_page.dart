import 'package:elden_ring_companion_app/pages/editor/subpages/locations_editor_page.dart';
import 'package:elden_ring_companion_app/pages/editor/subpages/regions_editor_page.dart';
import 'package:elden_ring_companion_app/pages/editor/widgets/editor_menu_item.dart';
import 'package:elden_ring_companion_app/pages/editor/widgets/menu_items.dart';
import 'package:flutter/material.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  int _currentIndex = 0;

  final _pageScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const Divider(height: 1),
            Expanded(
              child: Row(
                children: [
                  Flexible(
                      child: ListView(
                    children: EditorMenuItem.values
                        .map(
                          (e) => EditorMenuWidget(
                            isSelected: _currentIndex == EditorMenuItem.values.indexOf(e),
                            title: e.title,
                            onTap: () {
                              setState(() {
                                _currentIndex = EditorMenuItem.values.indexOf(e);
                                _pageScrollController.jumpTo(0);
                              });
                            },
                          ),
                        )
                        .toList(),
                  )),
                  Flexible(
                      flex: 4,
                      child: SingleChildScrollView(
                        controller: _pageScrollController,
                        child: IndexedStack(
                          index: _currentIndex,
                          children: [
                            const RegionsEditorPage(),
                            const LocationsEditorPage(),
                            Container(),
                            Container(),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
