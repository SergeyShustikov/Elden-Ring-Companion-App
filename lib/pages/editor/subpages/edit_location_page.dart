import 'package:elden_ring_companion_app/data/models/db/location_entity.dart';
import 'package:elden_ring_companion_app/pages/editor/widgets/edit_pair_field.dart';
import 'package:flutter/material.dart';

class EditLocationPage extends StatefulWidget {
  final LocationEntity entity;
  const EditLocationPage({super.key, required this.entity});

  @override
  State<EditLocationPage> createState() => _EditLocationPageState();
}

class _EditLocationPageState extends State<EditLocationPage> {
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
