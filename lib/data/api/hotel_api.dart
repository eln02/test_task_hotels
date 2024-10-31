import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/hotels/hotel_model.dart';



part 'hotel_api.g.dart';

@RestApi(baseUrl: "http://node1.flyer-b2b.ru:5001/api/")
abstract class HotelApi {
  factory HotelApi(Dio dio, {String baseUrl}) = _HotelApi;

  @GET("/hotels")
  Future<List<Hotel>> getHotels();
}
