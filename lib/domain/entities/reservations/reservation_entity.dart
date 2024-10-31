import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/reservations/reservation_model.dart';

part 'reservation_entity.freezed.dart';

@freezed
class ReservationEntity with _$ReservationEntity {
  const factory ReservationEntity({
    required String arrivalCountry,
    required String departure,
    required int fuelCharge,
    required int horating,
    required String hotelAddress,
    required String hotelName,
    required int id,
    required String numberOfNights,
    required String nutrition,
    required String ratingName,
    required String room,
    required int serviceCharge,
    required String tourDateStart,
    required String tourDateStop,
    required int tourPrice
  }) = _ReservationEntity;

  factory ReservationEntity.fromModel(Reservation reservation){
    return ReservationEntity(
        arrivalCountry: reservation.arrival_country,
        departure: reservation.departure,
        fuelCharge: reservation.fuel_charge,
        horating: reservation.horating,
        hotelAddress: reservation.hotel_address,
        hotelName: reservation.hotel_name,
        id: reservation.id,
        numberOfNights: reservation.number_of_nights,
        nutrition: reservation.nutrition,
        ratingName: reservation.rating_name,
        room: reservation.room,
        serviceCharge: reservation.service_charge,
        tourDateStart: reservation.tour_date_start,
        tourDateStop: reservation.tour_date_stop,
        tourPrice: reservation.tour_price
    );
  }
}

