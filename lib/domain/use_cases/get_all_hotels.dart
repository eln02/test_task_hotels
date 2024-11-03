import '../entities/hotels/hotel_entity.dart';
import '../repositories/hotel_repository.dart';

class GetAllHotelsUseCase {
  final HotelRepository repository;

  GetAllHotelsUseCase(this.repository);

  Future<List<HotelEntity>> call() async {
    return await repository.getHotels();
  }
}
