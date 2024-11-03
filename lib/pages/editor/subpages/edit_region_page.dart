import 'package:elden_ring_companion_app/data/models/db/region_entity.dart';
import 'package:elden_ring_companion_app/pages/editor/widgets/edit_pair_field.dart';
import 'package:flutter/material.dart';

class EditRegionPage extends StatefulWidget {
  final RegionEntity entity;
  const EditRegionPage({super.key, required this.entity});

  @override
  State<EditRegionPage> createState() => _EditRegionPageState();
}

class _EditRegionPageState extends State<EditRegionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.entity.name),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          EditPairField(title: 'id', fieldValue: widget.entity.id.toString()),
          EditPairField(title: 'name', fieldValue: widget.entity.name),
        ]),
      ),
    );
  }
}
