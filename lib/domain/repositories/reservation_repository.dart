import '../entities/reservations/reservation_entity.dart';

abstract class ReservationRepository {
  Future<List<ReservationEntity>> getReservations();
}
