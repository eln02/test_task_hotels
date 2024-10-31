import '../entities/rooms/room_entity.dart';

abstract class RoomRepository {
  Future<List<RoomEntity>> getRooms();
}
