import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
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
import 'package:test_task_hotels/presentation/router/go_router.dart';
import 'data/repositories/hotel_repository_impl.dart';
import 'domain/repositories/hotel_repository.dart';
import 'domain/repositories/reservation_repository.dart';
import 'domain/repositories/room_repository.dart';
import 'domain/use_cases/get_all_hotels.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerLazySingleton(() => HotelApi(getIt<Dio>()));
  getIt.registerLazySingleton(() => RoomApi(getIt<Dio>()));
  getIt.registerLazySingleton(() => ReservationApi(getIt<Dio>()));

  getIt.registerLazySingleton<HotelRepository>(() => HotelRepositoryImpl(getIt<HotelApi>()));
  getIt.registerLazySingleton<RoomRepository>(() => RoomRepositoryImpl(getIt<RoomApi>()));
  getIt.registerLazySingleton<ReservationRepository>(() => ReservationRepositoryImpl(getIt<ReservationApi>()));

  getIt.registerLazySingleton(() => GetAllHotelsUseCase(getIt<HotelRepository>()));
  getIt.registerLazySingleton(() => GetRoomsByIdUseCase(getIt<RoomRepository>()));
  getIt.registerLazySingleton(() => GetReservationByIdUseCase(getIt<ReservationRepository>()));

  getIt.registerFactory(() => HotelBloc(getIt<GetAllHotelsUseCase>()));
  getIt.registerFactory(() => RoomBloc(getIt<GetRoomsByIdUseCase>()));
  getIt.registerFactory(() => ReservationBloc(getIt<GetReservationByIdUseCase>()));
  getIt.registerFactory(() => TouristFormsBloc());
}

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HotelBloc>()..add(LoadHotelsEvent()),
        ),
        BlocProvider(
          create: (context) => getIt<RoomBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ReservationBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TouristFormsBloc>(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}