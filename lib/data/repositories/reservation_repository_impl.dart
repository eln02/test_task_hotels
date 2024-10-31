import '../../domain/entities/reservations/reservation_entity.dart';
import '../../domain/repositories/reservation_repository.dart';
import '../api/reservation_api.dart';

class ReservationRepositoryImpl implements ReservationRepository {
  final ReservationApi reservationApi;

  ReservationRepositoryImpl(this.reservationApi);

  @override
  Future<List<ReservationEntity>> getReservations() async {
    final reservations = await reservationApi.getReservations();
    return reservations
        .map((reservation) => ReservationEntity.fromModel(reservation))
        .toList();
  }
}
