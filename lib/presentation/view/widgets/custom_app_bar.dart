import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          context.pop();
        },
        icon: const Icon(Icons.arrow_back_ios)) : null,
  );
}
