import 'package:flutter/material.dart';

class MaterialInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const MaterialInkWell({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: child,
      ),
    );
  }
}
