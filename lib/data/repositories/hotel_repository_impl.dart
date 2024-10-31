import '../../domain/entities/hotels/hotel_entity.dart';
import '../../domain/repositories/hotel_repository.dart';
import '../api/hotel_api.dart';

class HotelRepositoryImpl implements HotelRepository {
  final HotelApi hotelApi;

  HotelRepositoryImpl(this.hotelApi);

  @override
  Future<List<HotelEntity>> getHotels() async {
    final hotels = await hotelApi.getHotels();
    return hotels.map((hotel) => HotelEntity.fromModel(hotel)).toList();
  }
}