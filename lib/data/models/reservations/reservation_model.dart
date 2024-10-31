import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_model.freezed.dart';
part 'reservation_model.g.dart';

@freezed
class Reservation with _$Reservation {
  const factory Reservation({
    required String arrival_country,
    required String departure,
    required int fuel_charge,
    required int horating,
    required String hotel_address,
    required String hotel_name,
    required int id,
    required String number_of_nights,
    required String nutrition,
    required String rating_name,
    required String room,
    required int service_charge,
    required String tour_date_start,
    required String tour_date_stop,
    required int tour_price
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) => _$ReservationFromJson(json);
}

