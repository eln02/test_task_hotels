import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_hotel_model.freezed.dart';
part 'about_hotel_model.g.dart';

@freezed
class AboutHotel with _$AboutHotel {
  const factory AboutHotel({
    required String description,
    required List<String> pecularities,
  }) = _AboutHotel;

  factory AboutHotel.fromJson(Map<String, dynamic> json) => _$AboutHotelFromJson(json);
}
