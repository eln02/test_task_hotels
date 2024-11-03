import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/rooms/room_entity.dart';
import '../../domain/use_cases/get_rooms_by_id.dart';

abstract class RoomState {}

class RoomInitial extends RoomState {}

class RoomLoading extends RoomState {}

class RoomLoaded extends RoomState {
  final List<RoomEntity> rooms;

  RoomLoaded(this.rooms);
}

class RoomError extends RoomState {
  final String message;

  RoomError(this.message);
}

abstract class RoomEvent {}

class LoadRoomsByIdEvent extends RoomEvent {
  final int id;

  LoadRoomsByIdEvent(this.id);
}

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final GetRoomsByIdUseCase getRoomsByIdUseCase;

  RoomBloc(this.getRoomsByIdUseCase) : super(RoomInitial()) {
    on<LoadRoomsByIdEvent>(_onLoadRoomsById);
  }

  Future<void> _onLoadRoomsById(LoadRoomsByIdEvent event, Emitter<RoomState> emit) async {
    emit(RoomLoading());
    try {
      final rooms = await getRoomsByIdUseCase(event.id);
      emit(RoomLoaded(rooms));
    } catch (e) {
      emit(RoomError("Не удалось загрузить номера: ${e.toString()}"));
    }
  }
}