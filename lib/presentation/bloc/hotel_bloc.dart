import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/hotels/hotel_entity.dart';
import '../../domain/use_cases/get_all_hotels.dart';

abstract class HotelState {}

class HotelInitial extends HotelState {}

class HotelLoading extends HotelState {}

class HotelLoaded extends HotelState {
  final List<HotelEntity> hotels;

  HotelLoaded(this.hotels);
}

class HotelError extends HotelState {
  final String message;

  HotelError(this.message);
}

abstract class HotelEvent {}

class LoadHotelsEvent extends HotelEvent {}

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final GetAllHotelsUseCase getAllHotelsUseCase;

  HotelBloc(this.getAllHotelsUseCase) : super(HotelInitial()) {
    on<LoadHotelsEvent>(_onLoadHotels);
  }

  Future<void> _onLoadHotels(LoadHotelsEvent event, Emitter<HotelState> emit) async {
    emit(HotelLoading());
    try {
      final hotels = await getAllHotelsUseCase();
      emit(HotelLoaded(hotels));
    } catch (e) {
      emit(HotelError("Не удалось загрузить отели: ${e.toString()}"));
    }
  }
}