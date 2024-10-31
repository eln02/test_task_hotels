// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AboutHotel _$AboutHotelFromJson(Map<String, dynamic> json) {
  return _AboutHotel.fromJson(json);
}

/// @nodoc
mixin _$AboutHotel {
  String get description => throw _privateConstructorUsedError;
  List<String> get pecularities => throw _privateConstructorUsedError;

  /// Serializes this AboutHotel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutHotelCopyWith<AboutHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutHotelCopyWith<$Res> {
  factory $AboutHotelCopyWith(
          AboutHotel value, $Res Function(AboutHotel) then) =
      _$AboutHotelCopyWithImpl<$Res, AboutHotel>;
  @useResult
  $Res call({String description, List<String> pecularities});
}

/// @nodoc
class _$AboutHotelCopyWithImpl<$Res, $Val extends AboutHotel>
    implements $AboutHotelCopyWith<$Res> {
  _$AboutHotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? pecularities = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value.pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutHotelImplCopyWith<$Res>
    implements $AboutHotelCopyWith<$Res> {
  factory _$$AboutHotelImplCopyWith(
          _$AboutHotelImpl value, $Res Function(_$AboutHotelImpl) then) =
      __$$AboutHotelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> pecularities});
}

/// @nodoc
class __$$AboutHotelImplCopyWithImpl<$Res>
    extends _$AboutHotelCopyWithImpl<$Res, _$AboutHotelImpl>
    implements _$$AboutHotelImplCopyWith<$Res> {
  __$$AboutHotelImplCopyWithImpl(
      _$AboutHotelImpl _value, $Res Function(_$AboutHotelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? pecularities = null,
  }) {
    return _then(_$AboutHotelImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value._pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutHotelImpl implements _AboutHotel {
  const _$AboutHotelImpl(
      {required this.description, required final List<String> pecularities})
      : _pecularities = pecularities;

  factory _$AboutHotelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutHotelImplFromJson(json);

  @override
  final String description;
  final List<String> _pecularities;
  @override
  List<String> get pecularities {
    if (_pecularities is EqualUnmodifiableListView) return _pecularities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pecularities);
  }

  @override
  String toString() {
    return 'AboutHotel(description: $description, pecularities: $pecularities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutHotelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._pecularities, _pecularities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_pecularities));

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutHotelImplCopyWith<_$AboutHotelImpl> get copyWith =>
      __$$AboutHotelImplCopyWithImpl<_$AboutHotelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutHotelImplToJson(
      this,
    );
  }
}

abstract class _AboutHotel implements AboutHotel {
  const factory _AboutHotel(
      {required final String description,
      required final List<String> pecularities}) = _$AboutHotelImpl;

  factory _AboutHotel.fromJson(Map<String, dynamic> json) =
      _$AboutHotelImpl.fromJson;

  @override
  String get description;
  @override
  List<String> get pecularities;

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutHotelImplCopyWith<_$AboutHotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
