import 'package:flutter/material.dart';
import 'package:test_task_hotels/domain/entities/hotels/about_hotel_entity.dart';
import 'package:test_task_hotels/presentation/view/widgets/peculiarity_tag.dart';

import '../../fonts.dart';
import 'hotel_tile.dart';

class AboutHotelSection extends StatelessWidget {
  final AboutHotelEntity aboutHotel;

  const AboutHotelSection({super.key, required this.aboutHotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Об отеле',
            style: style1,
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: aboutHotel.pecularities
                .map((tag) => PeculiarityTag(
                      peculiarity: tag,
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            aboutHotel.description,
            style: style0,
          ),
          const HotelTile(
              text: 'Удобства', iconUrl: 'assets/icons/happy_emoji_icon.svg'),
          const HotelTile(
              text: 'Что включено', iconUrl: 'assets/icons/checked_icon.svg'),
          const HotelTile(
            text: 'Что не включено',
            iconUrl: 'assets/icons/close_icon.svg',
            isLast: true,
          ),
        ],
      ),
    );
  }
}
