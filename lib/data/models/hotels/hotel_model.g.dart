// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelImpl _$$HotelImplFromJson(Map<String, dynamic> json) => _$HotelImpl(
      aboutHotel:
          AboutHotel.fromJson(json['aboutHotel'] as Map<String, dynamic>),
      address: json['address'] as String,
      id: (json['id'] as num).toInt(),
      image_urls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minimal_price: (json['minimal_price'] as num).toInt(),
      name: json['name'] as String,
      rating: (json['rating'] as num).toInt(),
      rating_name: json['rating_name'] as String,
    );

Map<String, dynamic> _$$HotelImplToJson(_$HotelImpl instance) =>
    <String, dynamic>{
      'aboutHotel': instance.aboutHotel,
      'address': instance.address,
      'id': instance.id,
      'image_urls': instance.image_urls,
      'minimal_price': instance.minimal_price,
      'name': instance.name,
      'rating': instance.rating,
      'rating_name': instance.rating_name,
    };
