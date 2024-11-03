import 'package:flutter/material.dart';

class EditPairField extends StatelessWidget {
  final String title;
  final String fieldValue;
  const EditPairField({super.key, required this.title, required this.fieldValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.1,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(title),
          ),
        ),
        Expanded(
            child: TextFormField(
          initialValue: fieldValue,
        ))
      ],
    );
  }
}
