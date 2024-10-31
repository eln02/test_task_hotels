import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_hotels/data/models/hotels/about_hotel_model.dart';

part 'about_hotel_entity.freezed.dart';

@freezed
class AboutHotelEntity with _$AboutHotelEntity {
  const factory AboutHotelEntity({
    required String description,
    required List<String> pecularities,
  }) = _AboutHotelEntity;

  factory AboutHotelEntity.fromModel(AboutHotel aboutHotel) {
    return AboutHotelEntity(
        description: aboutHotel.description,
        pecularities: aboutHotel.pecularities);
  }
}
