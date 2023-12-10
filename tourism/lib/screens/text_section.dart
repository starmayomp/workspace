import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String title;
  final String body;
  const TextSection({
    super.key,
    this.title,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      decoration: const BoxDecoration(
        color: _color,
      ),
      child: const Text('Olusoji'),
    );
  }
}
