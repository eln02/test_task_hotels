import 'package:flutter/material.dart';

import '../../fonts.dart';

AppBar customAppBar({required BuildContext context, required String title, bool showLeading = true}) {
  return AppBar(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    centerTitle: true,
    title: Text(
      title,
      style: style1,
    ),
    leading: showLeading ? IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios)) : null,
  );
}
