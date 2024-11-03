import '../entities/reservations/reservation_entity.dart';
import '../repositories/reservation_repository.dart';

class GetReservationByIdUseCase {
  final ReservationRepository repository;

  GetReservationByIdUseCase(this.repository);

  Future<ReservationEntity> call(int id) async {
    final reservations = await repository.getReservations();

    return reservations.firstWhere(
      (reservation) => reservation.id == id,
    );
  }
}
