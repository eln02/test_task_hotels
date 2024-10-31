import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required int id,
    required List<String> image_urls,
    required String name,
    required List<String> pecularities,
    required int price,
    required String price_per,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
