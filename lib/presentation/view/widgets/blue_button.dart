import 'package:flutter/material.dart';

import '../../fonts.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const BlueButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
            WidgetStateProperty.all(const Color(0xFF4168E2)),
            foregroundColor: WidgetStateProperty.all(Colors.white),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            elevation: WidgetStateProperty.all(0),
            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
                vertical: 12, horizontal: 20)),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: style0.copyWith(color: Colors.white),
          )),
    );
  }
}
