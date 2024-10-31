import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/rooms/room_model.dart';



part 'room_api.g.dart';

@RestApi(baseUrl: "http://node1.flyer-b2b.ru:5001/api/")
abstract class RoomApi {
  factory RoomApi(Dio dio, {String baseUrl}) = _RoomApi;

  @GET("/rooms")
  Future<List<Room>> getRooms();
}
