import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/reservation_page.dart';
import 'package:test_task_hotels/presentation/view/widgets/peculiarity_tag.dart';
import 'package:test_task_hotels/presentation/view/widgets/pictures_carusel.dart';

import '../../../domain/entities/rooms/room_entity.dart';
import '../../fonts.dart';
import '../../utils/formatting.dart';
import '../widgets/blue_button.dart';

class RoomCard extends StatelessWidget {
  final RoomEntity room;

  const RoomCard({super.key, required this.room});

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
          PicturesCarousel(imageUrls: room.imageUrls),
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
                  room.name,
                  style: style1,
                ),
                const SizedBox(
                  height: 8,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: room.pecularities
                      .map((tag) => PeculiarityTag(
                    peculiarity: tag,
                  ))
                      .toList(),
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                    text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: '${formatPrice(room.price * 7)} ₽ ',
                              style: style3),
                          TextSpan(text: 'за 7 ночей', style: style4)
                        ])),
                const SizedBox(
                  height: 14,
                ),
                BlueButton(text: 'Выбрать номер', onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReservationPage(roomId: room.id)),
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

