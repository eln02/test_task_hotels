import '../entities/rooms/room_entity.dart';
import '../repositories/room_repository.dart';

class GetRoomsByIdUseCase {
  final RoomRepository repository;

  GetRoomsByIdUseCase(this.repository);

  Future<List<RoomEntity>> call(int id) async {
    final rooms = await repository.getRooms();
    return rooms.where((room) => room.id == id).toList();
  }

  /*Future<List<RoomEntity>> call(int id) async {
    final rooms = await repository.getRooms();
    return rooms;
  }*/
}
