// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExampleDetailEntity {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleDetailEntityCopyWith<ExampleDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleDetailEntityCopyWith<$Res> {
  factory $ExampleDetailEntityCopyWith(
          ExampleDetailEntity value, $Res Function(ExampleDetailEntity) then) =
      _$ExampleDetailEntityCopyWithImpl<$Res, ExampleDetailEntity>;
  @useResult
  $Res call(
      {String id, String code, String name, String address, double price});
}

/// @nodoc
class _$ExampleDetailEntityCopyWithImpl<$Res, $Val extends ExampleDetailEntity>
    implements $ExampleDetailEntityCopyWith<$Res> {
  _$ExampleDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? address = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleDetailEntityImplCopyWith<$Res>
    implements $ExampleDetailEntityCopyWith<$Res> {
  factory _$$ExampleDetailEntityImplCopyWith(_$ExampleDetailEntityImpl value,
          $Res Function(_$ExampleDetailEntityImpl) then) =
      __$$ExampleDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String code, String name, String address, double price});
}

/// @nodoc
class __$$ExampleDetailEntityImplCopyWithImpl<$Res>
    extends _$ExampleDetailEntityCopyWithImpl<$Res, _$ExampleDetailEntityImpl>
    implements _$$ExampleDetailEntityImplCopyWith<$Res> {
  __$$ExampleDetailEntityImplCopyWithImpl(_$ExampleDetailEntityImpl _value,
      $Res Function(_$ExampleDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? address = null,
    Object? price = null,
  }) {
    return _then(_$ExampleDetailEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ExampleDetailEntityImpl extends _ExampleDetailEntity {
  const _$ExampleDetailEntityImpl(
      {required this.id,
      required this.code,
      required this.name,
      required this.address,
      required this.price})
      : super._();

  @override
  final String id;
  @override
  final String code;
  @override
  final String name;
  @override
  final String address;
  @override
  final double price;

  @override
  String toString() {
    return 'ExampleDetailEntity(id: $id, code: $code, name: $name, address: $address, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleDetailEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, code, name, address, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleDetailEntityImplCopyWith<_$ExampleDetailEntityImpl> get copyWith =>
      __$$ExampleDetailEntityImplCopyWithImpl<_$ExampleDetailEntityImpl>(
          this, _$identity);
}

abstract class _ExampleDetailEntity extends ExampleDetailEntity {
  const factory _ExampleDetailEntity(
      {required final String id,
      required final String code,
      required final String name,
      required final String address,
      required final double price}) = _$ExampleDetailEntityImpl;
  const _ExampleDetailEntity._() : super._();

  @override
  String get id;
  @override
  String get code;
  @override
  String get name;
  @override
  String get address;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$ExampleDetailEntityImplCopyWith<_$ExampleDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
