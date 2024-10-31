import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:test_task_hotels/data/models/reservations/reservation_model.dart';




part 'reservation_api.g.dart';

@RestApi(baseUrl: "http://node1.flyer-b2b.ru:5001/api/")
abstract class ReservationApi {
  factory ReservationApi(Dio dio, {String baseUrl}) = _ReservationApi;

  @GET("/reservations")
  Future<List<Reservation>> getReservations();
}
