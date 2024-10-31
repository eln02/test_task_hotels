import 'package:freezed_annotation/freezed_annotation.dart';

import 'about_hotel_model.dart';


part 'hotel_model.freezed.dart';
part 'hotel_model.g.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required AboutHotel aboutHotel,
    required String address,
    required int id,
    required List<String> image_urls,
    required int minimal_price,
    required String name,
    required int rating,
    required String rating_name,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
