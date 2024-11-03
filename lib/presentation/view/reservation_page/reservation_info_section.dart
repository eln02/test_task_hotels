import 'package:flutter/material.dart';
import 'package:test_task_hotels/domain/entities/reservations/reservation_entity.dart';

import '../../fonts.dart';
import '../../utils/formatting.dart';

class ReservationInfoSection extends StatelessWidget {
  final ReservationEntity reservation;
  const ReservationInfoSection({super.key, required this.reservation});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0),),
      ),
      child: Column(
        children: [
          Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(1.3),
            },
            children: [
              _data('Страна', reservation.arrivalCountry),
              _data('Даты',
                  '${formatDate(reservation.tourDateStart)} - ${formatDate(reservation.tourDateStop)}'),
              _data('Кол-во ночей', reservation.numberOfNights),
              _data('Отель', reservation.hotelName),
              _data('Номер', reservation.room),
              _data('Питание', reservation.nutrition),
            ],
          ),
        ],
      ),
    );
  }

  TableRow _data(String text1, String text2) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(text1, style: style4, textAlign: TextAlign.left),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(text2, style: style5, textAlign: TextAlign.left),
        ),
      ],
    );
  }
}
