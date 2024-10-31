import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/rooms/room_model.dart';

part 'room_entity.freezed.dart';

@freezed
class RoomEntity with _$RoomEntity {
  const factory RoomEntity({
    required int id,
    required List<String> imageUrls,
    required String name,
    required List<String> pecularities,
    required int price,
    required String pricePer,
  }) = _RoomEntity;

  factory RoomEntity.fromModel(Room room){
    return RoomEntity(
        id: room.id,
        imageUrls: room.image_urls,
        name: room.name,
        pecularities: room.pecularities,
        price: room.price,
        pricePer: room.price_per);
  }
}
