import '../../domain/entities/rooms/room_entity.dart';
import '../../domain/repositories/room_repository.dart';
import '../api/room_api.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomApi roomApi;

  RoomRepositoryImpl(this.roomApi);

  @override
  Future<List<RoomEntity>> getRooms() async {
    final rooms = await roomApi.getRooms();
    return rooms.map((room) => RoomEntity.fromModel(room)).toList();
  }
}
