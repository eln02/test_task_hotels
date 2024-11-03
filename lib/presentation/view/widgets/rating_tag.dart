import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/fonts.dart';

class RatingTag extends StatelessWidget {
  final int rating;
  final String ratingName;
  const RatingTag({
    super.key,
    required this.rating,
    required this.ratingName});

  @override
  Widget build(BuildContext context) {
    const color1 = Color(0xFFE6BD5D);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xFFF8ECC8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
              Icons.star_outlined,
              color: color1,
              size: 20,),
          const SizedBox(width: 4,),
          Text(rating.toString(), style: style5.copyWith(color: color1),),
          const SizedBox(width: 4,),
          Text(ratingName, style: style5.copyWith(color: color1),)
        ],
      ),
    );
  }
}


