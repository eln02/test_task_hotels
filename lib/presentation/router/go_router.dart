import 'package:go_router/go_router.dart';
import 'package:test_task_hotels/domain/entities/hotels/hotel_entity.dart';
import 'package:test_task_hotels/presentation/view/final_page/final_page.dart';
import 'package:test_task_hotels/presentation/view/hotel_page/hotel_page.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/reservation_page.dart';
import 'package:test_task_hotels/presentation/view/rooms_page/rooms_page.dart';

import '../view/all_hotels_page/hotels_page.dart';

final router = GoRouter(initialLocation: '/hotels', routes: [
  GoRoute(
      path: '/hotels',
      builder: (context, state) => const AllHotelsPage(),
      routes: [
        GoRoute(
            path: 'hotel',
            builder: (context, state) => HotelPage(hotel: state.extra as HotelEntity),
            routes: [
              GoRoute(
                  path: 'rooms',
                  builder: (context, state) {
                    final extraData = state.extra as Map<String, dynamic>;
                    return RoomsPage(roomId: extraData['roomId'], title: extraData['title']);
                  },
                  routes: [
                    GoRoute(
                        path: 'reservation',
                        builder: (context, state) => ReservationPage(roomId: state.extra as int),
                        routes: [
                          GoRoute(
                              path: 'final',
                              builder: (context, state) => const FinalPage())
                        ])
                  ])
            ]),
      ])
]);
