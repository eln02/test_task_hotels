// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return _Reservation.fromJson(json);
}

/// @nodoc
mixin _$Reservation {
  String get arrival_country => throw _privateConstructorUsedError;
  String get departure => throw _privateConstructorUsedError;
  int get fuel_charge => throw _privateConstructorUsedError;
  int get horating => throw _privateConstructorUsedError;
  String get hotel_address => throw _privateConstructorUsedError;
  String get hotel_name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get number_of_nights => throw _privateConstructorUsedError;
  String get nutrition => throw _privateConstructorUsedError;
  String get rating_name => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  int get service_charge => throw _privateConstructorUsedError;
  String get tour_date_start => throw _privateConstructorUsedError;
  String get tour_date_stop => throw _privateConstructorUsedError;
  int get tour_price => throw _privateConstructorUsedError;

  /// Serializes this Reservation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res, Reservation>;
  @useResult
  $Res call(
      {String arrival_country,
      String departure,
      int fuel_charge,
      int horating,
      String hotel_address,
      String hotel_name,
      int id,
      String number_of_nights,
      String nutrition,
      String rating_name,
      String room,
      int service_charge,
      String tour_date_start,
      String tour_date_stop,
      int tour_price});
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res, $Val extends Reservation>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrival_country = null,
    Object? departure = null,
    Object? fuel_charge = null,
    Object? horating = null,
    Object? hotel_address = null,
    Object? hotel_name = null,
    Object? id = null,
    Object? number_of_nights = null,
    Object? nutrition = null,
    Object? rating_name = null,
    Object? room = null,
    Object? service_charge = null,
    Object? tour_date_start = null,
    Object? tour_date_stop = null,
    Object? tour_price = null,
  }) {
    return _then(_value.copyWith(
      arrival_country: null == arrival_country
          ? _value.arrival_country
          : arrival_country // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      fuel_charge: null == fuel_charge
          ? _value.fuel_charge
          : fuel_charge // ignore: cast_nullable_to_non_nullable
              as int,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int,
      hotel_address: null == hotel_address
          ? _value.hotel_address
          : hotel_address // ignore: cast_nullable_to_non_nullable
              as String,
      hotel_name: null == hotel_name
          ? _value.hotel_name
          : hotel_name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number_of_nights: null == number_of_nights
          ? _value.number_of_nights
          : number_of_nights // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      rating_name: null == rating_name
          ? _value.rating_name
          : rating_name // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      service_charge: null == service_charge
          ? _value.service_charge
          : service_charge // ignore: cast_nullable_to_non_nullable
              as int,
      tour_date_start: null == tour_date_start
          ? _value.tour_date_start
          : tour_date_start // ignore: cast_nullable_to_non_nullable
              as String,
      tour_date_stop: null == tour_date_stop
          ? _value.tour_date_stop
          : tour_date_stop // ignore: cast_nullable_to_non_nullable
              as String,
      tour_price: null == tour_price
          ? _value.tour_price
          : tour_price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationImplCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$ReservationImplCopyWith(
          _$ReservationImpl value, $Res Function(_$ReservationImpl) then) =
      __$$ReservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String arrival_country,
      String departure,
      int fuel_charge,
      int horating,
      String hotel_address,
      String hotel_name,
      int id,
      String number_of_nights,
      String nutrition,
      String rating_name,
      String room,
      int service_charge,
      String tour_date_start,
      String tour_date_stop,
      int tour_price});
}

/// @nodoc
class __$$ReservationImplCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$ReservationImpl>
    implements _$$ReservationImplCopyWith<$Res> {
  __$$ReservationImplCopyWithImpl(
      _$ReservationImpl _value, $Res Function(_$ReservationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrival_country = null,
    Object? departure = null,
    Object? fuel_charge = null,
    Object? horating = null,
    Object? hotel_address = null,
    Object? hotel_name = null,
    Object? id = null,
    Object? number_of_nights = null,
    Object? nutrition = null,
    Object? rating_name = null,
    Object? room = null,
    Object? service_charge = null,
    Object? tour_date_start = null,
    Object? tour_date_stop = null,
    Object? tour_price = null,
  }) {
    return _then(_$ReservationImpl(
      arrival_country: null == arrival_country
          ? _value.arrival_country
          : arrival_country // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      fuel_charge: null == fuel_charge
          ? _value.fuel_charge
          : fuel_charge // ignore: cast_nullable_to_non_nullable
              as int,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int,
      hotel_address: null == hotel_address
          ? _value.hotel_address
          : hotel_address // ignore: cast_nullable_to_non_nullable
              as String,
      hotel_name: null == hotel_name
          ? _value.hotel_name
          : hotel_name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number_of_nights: null == number_of_nights
          ? _value.number_of_nights
          : number_of_nights // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      rating_name: null == rating_name
          ? _value.rating_name
          : rating_name // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      service_charge: null == service_charge
          ? _value.service_charge
          : service_charge // ignore: cast_nullable_to_non_nullable
              as int,
      tour_date_start: null == tour_date_start
          ? _value.tour_date_start
          : tour_date_start // ignore: cast_nullable_to_non_nullable
              as String,
      tour_date_stop: null == tour_date_stop
          ? _value.tour_date_stop
          : tour_date_stop // ignore: cast_nullable_to_non_nullable
              as String,
      tour_price: null == tour_price
          ? _value.tour_price
          : tour_price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationImpl implements _Reservation {
  const _$ReservationImpl(
      {required this.arrival_country,
      required this.departure,
      required this.fuel_charge,
      required this.horating,
      required this.hotel_address,
      required this.hotel_name,
      required this.id,
      required this.number_of_nights,
      required this.nutrition,
      required this.rating_name,
      required this.room,
      required this.service_charge,
      required this.tour_date_start,
      required this.tour_date_stop,
      required this.tour_price});

  factory _$ReservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationImplFromJson(json);

  @override
  final String arrival_country;
  @override
  final String departure;
  @override
  final int fuel_charge;
  @override
  final int horating;
  @override
  final String hotel_address;
  @override
  final String hotel_name;
  @override
  final int id;
  @override
  final String number_of_nights;
  @override
  final String nutrition;
  @override
  final String rating_name;
  @override
  final String room;
  @override
  final int service_charge;
  @override
  final String tour_date_start;
  @override
  final String tour_date_stop;
  @override
  final int tour_price;

  @override
  String toString() {
    return 'Reservation(arrival_country: $arrival_country, departure: $departure, fuel_charge: $fuel_charge, horating: $horating, hotel_address: $hotel_address, hotel_name: $hotel_name, id: $id, number_of_nights: $number_of_nights, nutrition: $nutrition, rating_name: $rating_name, room: $room, service_charge: $service_charge, tour_date_start: $tour_date_start, tour_date_stop: $tour_date_stop, tour_price: $tour_price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationImpl &&
            (identical(other.arrival_country, arrival_country) ||
                other.arrival_country == arrival_country) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.fuel_charge, fuel_charge) ||
                other.fuel_charge == fuel_charge) &&
            (identical(other.horating, horating) ||
                other.horating == horating) &&
            (identical(other.hotel_address, hotel_address) ||
                other.hotel_address == hotel_address) &&
            (identical(other.hotel_name, hotel_name) ||
                other.hotel_name == hotel_name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number_of_nights, number_of_nights) ||
                other.number_of_nights == number_of_nights) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.rating_name, rating_name) ||
                other.rating_name == rating_name) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.service_charge, service_charge) ||
                other.service_charge == service_charge) &&
            (identical(other.tour_date_start, tour_date_start) ||
                other.tour_date_start == tour_date_start) &&
            (identical(other.tour_date_stop, tour_date_stop) ||
                other.tour_date_stop == tour_date_stop) &&
            (identical(other.tour_price, tour_price) ||
                other.tour_price == tour_price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      arrival_country,
      departure,
      fuel_charge,
      horating,
      hotel_address,
      hotel_name,
      id,
      number_of_nights,
      nutrition,
      rating_name,
      room,
      service_charge,
      tour_date_start,
      tour_date_stop,
      tour_price);

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationImplCopyWith<_$ReservationImpl> get copyWith =>
      __$$ReservationImplCopyWithImpl<_$ReservationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationImplToJson(
      this,
    );
  }
}

abstract class _Reservation implements Reservation {
  const factory _Reservation(
      {required final String arrival_country,
      required final String departure,
      required final int fuel_charge,
      required final int horating,
      required final String hotel_address,
      required final String hotel_name,
      required final int id,
      required final String number_of_nights,
      required final String nutrition,
      required final String rating_name,
      required final String room,
      required final int service_charge,
      required final String tour_date_start,
      required final String tour_date_stop,
      required final int tour_price}) = _$ReservationImpl;

  factory _Reservation.fromJson(Map<String, dynamic> json) =
      _$ReservationImpl.fromJson;

  @override
  String get arrival_country;
  @override
  String get departure;
  @override
  int get fuel_charge;
  @override
  int get horating;
  @override
  String get hotel_address;
  @override
  String get hotel_name;
  @override
  int get id;
  @override
  String get number_of_nights;
  @override
  String get nutrition;
  @override
  String get rating_name;
  @override
  String get room;
  @override
  int get service_charge;
  @override
  String get tour_date_start;
  @override
  String get tour_date_stop;
  @override
  int get tour_price;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationImplCopyWith<_$ReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
