import '../entities/hotels/hotel_entity.dart';

abstract class HotelRepository {
  Future<List<HotelEntity>> getHotels();
}
