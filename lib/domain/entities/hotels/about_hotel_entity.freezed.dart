// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_hotel_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AboutHotelEntity {
  String get description => throw _privateConstructorUsedError;
  List<String> get pecularities => throw _privateConstructorUsedError;

  /// Create a copy of AboutHotelEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutHotelEntityCopyWith<AboutHotelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutHotelEntityCopyWith<$Res> {
  factory $AboutHotelEntityCopyWith(
          AboutHotelEntity value, $Res Function(AboutHotelEntity) then) =
      _$AboutHotelEntityCopyWithImpl<$Res, AboutHotelEntity>;
  @useResult
  $Res call({String description, List<String> pecularities});
}

/// @nodoc
class _$AboutHotelEntityCopyWithImpl<$Res, $Val extends AboutHotelEntity>
    implements $AboutHotelEntityCopyWith<$Res> {
  _$AboutHotelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutHotelEntity
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
abstract class _$$AboutHotelEntityImplCopyWith<$Res>
    implements $AboutHotelEntityCopyWith<$Res> {
  factory _$$AboutHotelEntityImplCopyWith(_$AboutHotelEntityImpl value,
          $Res Function(_$AboutHotelEntityImpl) then) =
      __$$AboutHotelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> pecularities});
}

/// @nodoc
class __$$AboutHotelEntityImplCopyWithImpl<$Res>
    extends _$AboutHotelEntityCopyWithImpl<$Res, _$AboutHotelEntityImpl>
    implements _$$AboutHotelEntityImplCopyWith<$Res> {
  __$$AboutHotelEntityImplCopyWithImpl(_$AboutHotelEntityImpl _value,
      $Res Function(_$AboutHotelEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutHotelEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? pecularities = null,
  }) {
    return _then(_$AboutHotelEntityImpl(
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

class _$AboutHotelEntityImpl implements _AboutHotelEntity {
  const _$AboutHotelEntityImpl(
      {required this.description, required final List<String> pecularities})
      : _pecularities = pecularities;

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
    return 'AboutHotelEntity(description: $description, pecularities: $pecularities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutHotelEntityImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._pecularities, _pecularities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_pecularities));

  /// Create a copy of AboutHotelEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutHotelEntityImplCopyWith<_$AboutHotelEntityImpl> get copyWith =>
      __$$AboutHotelEntityImplCopyWithImpl<_$AboutHotelEntityImpl>(
          this, _$identity);
}

abstract class _AboutHotelEntity implements AboutHotelEntity {
  const factory _AboutHotelEntity(
      {required final String description,
      required final List<String> pecularities}) = _$AboutHotelEntityImpl;

  @override
  String get description;
  @override
  List<String> get pecularities;

  /// Create a copy of AboutHotelEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutHotelEntityImplCopyWith<_$AboutHotelEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
