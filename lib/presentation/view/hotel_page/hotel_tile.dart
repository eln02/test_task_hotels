import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../fonts.dart';

class HotelTile extends StatelessWidget {
  final String text;
  final String iconUrl;
  final bool isLast;
  const HotelTile({super.key, required this.text, required this.iconUrl, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(text, style: style0,),
          subtitle: Text('Самое необходимое', style: style4.copyWith(height: 0),),
          horizontalTitleGap: 26,
          leading: SvgPicture.asset(
            iconUrl,
            height: 26,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        isLast ? const SizedBox() : Container(
          margin: const EdgeInsets.only(left: 66, right: 10),
          height: 1.0,
          color: Colors.grey[100],
        ),
      ],
    );
  }
}

