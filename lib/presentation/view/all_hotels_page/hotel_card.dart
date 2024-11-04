import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/view/hotel_page/hotel_page.dart';
import 'package:test_task_hotels/presentation/view/widgets/blue_button.dart';
import 'package:test_task_hotels/presentation/view/widgets/peculiarity_tag.dart';
import 'package:test_task_hotels/presentation/view/widgets/pictures_carusel.dart';

import '../../../domain/entities/hotels/hotel_entity.dart';
import '../../fonts.dart';

class HotelCard extends StatelessWidget {
  final HotelEntity hotel;

  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PicturesCarousel(imageUrls: hotel.imageUrls),
          Container(
            padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 14,
                ),
                Text(
                  hotel.name,
                  style: style1,
                ),
                const SizedBox(
                  height: 8,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: hotel.aboutHotel.pecularities
                      .map((tag) => PeculiarityTag(
                    peculiarity: tag,
                  ))
                      .toList(),
                ),
                const SizedBox(
                  height: 14,
                ),
                BlueButton(text: 'Выбрать отель', onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HotelPage(hotel: hotel)),
                  );
                },),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

