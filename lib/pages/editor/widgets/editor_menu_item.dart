import 'package:flutter/material.dart';

class EditorMenuWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const EditorMenuWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: EdgeInsets.only(left: isSelected ? 8.0 : 0),
        child: Text(title),
      ),
      onTap: onTap,
      tileColor: isSelected ? Colors.amber[300] : null,
    );
  }
}
