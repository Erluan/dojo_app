// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExampleItemEntity {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleItemEntityCopyWith<ExampleItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleItemEntityCopyWith<$Res> {
  factory $ExampleItemEntityCopyWith(
          ExampleItemEntity value, $Res Function(ExampleItemEntity) then) =
      _$ExampleItemEntityCopyWithImpl<$Res, ExampleItemEntity>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$ExampleItemEntityCopyWithImpl<$Res, $Val extends ExampleItemEntity>
    implements $ExampleItemEntityCopyWith<$Res> {
  _$ExampleItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleItemEntityImplCopyWith<$Res>
    implements $ExampleItemEntityCopyWith<$Res> {
  factory _$$ExampleItemEntityImplCopyWith(_$ExampleItemEntityImpl value,
          $Res Function(_$ExampleItemEntityImpl) then) =
      __$$ExampleItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$ExampleItemEntityImplCopyWithImpl<$Res>
    extends _$ExampleItemEntityCopyWithImpl<$Res, _$ExampleItemEntityImpl>
    implements _$$ExampleItemEntityImplCopyWith<$Res> {
  __$$ExampleItemEntityImplCopyWithImpl(_$ExampleItemEntityImpl _value,
      $Res Function(_$ExampleItemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$ExampleItemEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExampleItemEntityImpl extends _ExampleItemEntity {
  const _$ExampleItemEntityImpl(
      {required this.title, required this.description})
      : super._();

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'ExampleItemEntity(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleItemEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleItemEntityImplCopyWith<_$ExampleItemEntityImpl> get copyWith =>
      __$$ExampleItemEntityImplCopyWithImpl<_$ExampleItemEntityImpl>(
          this, _$identity);
}

abstract class _ExampleItemEntity extends ExampleItemEntity {
  const factory _ExampleItemEntity(
      {required final String title,
      required final String description}) = _$ExampleItemEntityImpl;
  const _ExampleItemEntity._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ExampleItemEntityImplCopyWith<_$ExampleItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
