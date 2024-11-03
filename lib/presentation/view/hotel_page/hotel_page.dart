import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/view/widgets/pictures_carusel.dart';
import 'package:test_task_hotels/presentation/view/widgets/rating_tag.dart';

import '../../../domain/entities/hotels/hotel_entity.dart';
import '../../fonts.dart';
import '../../utils/formatting.dart';
import 'about_hotel_section.dart';
import '../widgets/blue_button.dart';

class HotelPage extends StatelessWidget {
  final HotelEntity hotel;

  const HotelPage({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Center(
            child: Text(
              'Отель',
              style: style1,
            )),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 14,
                        ),
                        RatingTag(
                          rating: hotel.rating,
                          ratingName: hotel.ratingName,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          hotel.name,
                          style: style1,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          hotel.address,
                          style: style2,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        RichText(
                            text: TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text:
                                      'от ${formatPrice(hotel.minimalPrice)} ₽ ',
                                      style: style3),
                                  TextSpan(
                                      text: 'за тур с перелетом', style: style4)
                                ])),
                        const SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            AboutHotelSection(aboutHotel: hotel.aboutHotel),
            const SizedBox(
              height: 16,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Colors.grey[200]!, width: 1.5),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: BlueButton(text: 'К выбору номера', onPressed: (){},)
            )
          ],
        ),
      ),
    );
  }
}
