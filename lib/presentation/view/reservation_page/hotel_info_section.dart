import 'package:flutter/material.dart';
import 'package:test_task_hotels/domain/entities/reservations/reservation_entity.dart';

import '../../fonts.dart';
import '../widgets/rating_tag.dart';

class HotelSection extends StatelessWidget {
  final ReservationEntity reservation;
  const HotelSection({super.key, required this.reservation});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0),)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RatingTag(
            rating: reservation.horating,
            ratingName: reservation.ratingName,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            reservation.hotelName,
            style: style1,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            reservation.hotelAddress,
            style: style2,
          ),
        ],
      ),
    );
  }
}
