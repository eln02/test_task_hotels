// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutHotelImpl _$$AboutHotelImplFromJson(Map<String, dynamic> json) =>
    _$AboutHotelImpl(
      description: json['description'] as String,
      pecularities: (json['pecularities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AboutHotelImplToJson(_$AboutHotelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'pecularities': instance.pecularities,
    };
