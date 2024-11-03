import 'package:flutter/material.dart';

import '../../../fonts.dart';

InputDecoration inputDecoration(bool isFocused, bool isValid, String text){
  return InputDecoration(
    errorText: null,
    errorStyle: const TextStyle(fontSize: 0),
    label: Padding(
        padding: EdgeInsets.only(top: isFocused ? 30 : 0),
        child: Text(text, style: style6)),
    filled: true,
    fillColor: isValid
        ? Colors.grey[100]
        : const Color(0xFFEB5757).withOpacity(0.26),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide.none,
    ),
  );
}
