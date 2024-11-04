import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_hotels/data/api/hotel_api.dart';
import 'package:test_task_hotels/data/api/reservation_api.dart';
import 'package:test_task_hotels/data/api/room_api.dart';
import 'package:test_task_hotels/data/repositories/reservation_repository_impl.dart';
import 'package:test_task_hotels/data/repositories/room_repository_impl.dart';
import 'package:test_task_hotels/domain/use_cases/get_reservation_by_id.dart';
import 'package:test_task_hotels/domain/use_cases/get_rooms_by_id.dart';
import 'package:test_task_hotels/presentation/bloc/hotel_bloc.dart';
import 'package:test_task_hotels/presentation/bloc/reservation_bloc.dart';
import 'package:test_task_hotels/presentation/bloc/room_bloc.dart';
import 'package:test_task_hotels/presentation/bloc/tourist_forms_bloc.dart';
import 'package:test_task_hotels/presentation/view/all_hotels_page/hotels_page.dart';
import 'data/repositories/hotel_repository_impl.dart';
import 'domain/use_cases/get_all_hotels.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final getAllHotelsUseCase =
      GetAllHotelsUseCase(HotelRepositoryImpl(HotelApi(Dio())));
  final getRoomsByIdUseCase =
      GetRoomsByIdUseCase(RoomRepositoryImpl(RoomApi(Dio())));
  final getReservationByIdUseCase = GetReservationByIdUseCase(
      ReservationRepositoryImpl(ReservationApi(Dio())));

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => HotelBloc(getAllHotelsUseCase)..add(LoadHotelsEvent())),
      BlocProvider(create: (context) => RoomBloc(getRoomsByIdUseCase)),
      BlocProvider(create: (context) => ReservationBloc(getReservationByIdUseCase)),
      BlocProvider(create: (context) => TouristFormsBloc())
    ], child: const MaterialApp(home: AllHotelsPage()));
  }
}
