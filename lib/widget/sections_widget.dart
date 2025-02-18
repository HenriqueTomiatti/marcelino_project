import 'package:flutter/material.dart';

class SectionsWidget extends StatelessWidget {
  final List<Map<String, dynamic>> sections;

  const SectionsWidget({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: sections.map((section) {
        return Padding(
          key: section['key'],
          padding: const EdgeInsets.all(16.0),
          child: section['widget'],
        );
      }).toList(),
    );
  }
}
