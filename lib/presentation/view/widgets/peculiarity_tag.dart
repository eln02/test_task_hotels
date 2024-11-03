import 'package:flutter/material.dart';

import '../../fonts.dart';

class PeculiarityTag extends StatelessWidget {
  final String peculiarity;
  const PeculiarityTag({
    super.key,
    required this.peculiarity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.grey[300],
      ),
      child: Text(peculiarity, style: style5.copyWith(color: Colors.grey[700]),)
    );
  }
}


