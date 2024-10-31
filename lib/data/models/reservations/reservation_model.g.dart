// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationImpl _$$ReservationImplFromJson(Map<String, dynamic> json) =>
    _$ReservationImpl(
      arrival_country: json['arrival_country'] as String,
      departure: json['departure'] as String,
      fuel_charge: (json['fuel_charge'] as num).toInt(),
      horating: (json['horating'] as num).toInt(),
      hotel_address: json['hotel_address'] as String,
      hotel_name: json['hotel_name'] as String,
      id: (json['id'] as num).toInt(),
      number_of_nights: json['number_of_nights'] as String,
      nutrition: json['nutrition'] as String,
      rating_name: json['rating_name'] as String,
      room: json['room'] as String,
      service_charge: (json['service_charge'] as num).toInt(),
      tour_date_start: json['tour_date_start'] as String,
      tour_date_stop: json['tour_date_stop'] as String,
      tour_price: (json['tour_price'] as num).toInt(),
    );

Map<String, dynamic> _$$ReservationImplToJson(_$ReservationImpl instance) =>
    <String, dynamic>{
      'arrival_country': instance.arrival_country,
      'departure': instance.departure,
      'fuel_charge': instance.fuel_charge,
      'horating': instance.horating,
      'hotel_address': instance.hotel_address,
      'hotel_name': instance.hotel_name,
      'id': instance.id,
      'number_of_nights': instance.number_of_nights,
      'nutrition': instance.nutrition,
      'rating_name': instance.rating_name,
      'room': instance.room,
      'service_charge': instance.service_charge,
      'tour_date_start': instance.tour_date_start,
      'tour_date_stop': instance.tour_date_stop,
      'tour_price': instance.tour_price,
    };
