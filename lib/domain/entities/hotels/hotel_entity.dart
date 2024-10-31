import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/hotels/hotel_model.dart';
import 'about_hotel_entity.dart';


part 'hotel_entity.freezed.dart';

@freezed
class HotelEntity with _$HotelEntity {
  const factory HotelEntity({
    required AboutHotelEntity aboutHotel,
    required String address,
    required int id,
    required List<String> imageUrls,
    required int minimalPrice,
    required String name,
    required int rating,
    required String ratingName,
  }) = _HotelEntity;

  factory HotelEntity.fromModel(Hotel hotel){
    return HotelEntity(
        aboutHotel: AboutHotelEntity.fromModel(hotel.aboutHotel),
        address: hotel.address,
        id: hotel.id,
        imageUrls: hotel.image_urls,
        minimalPrice: hotel.minimal_price,
        name: hotel.name,
        rating: hotel.rating,
        ratingName: hotel.rating_name);
  }
}
