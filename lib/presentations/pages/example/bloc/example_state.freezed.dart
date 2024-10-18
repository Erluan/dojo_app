// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExampleState {
  List<ExampleDetailEntity>? get restaurants =>
      throw _privateConstructorUsedError;
  bool get adBannerLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleStateCopyWith<ExampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleStateCopyWith<$Res> {
  factory $ExampleStateCopyWith(
          ExampleState value, $Res Function(ExampleState) then) =
      _$ExampleStateCopyWithImpl<$Res, ExampleState>;
  @useResult
  $Res call({List<ExampleDetailEntity>? restaurants, bool adBannerLoaded});
}

/// @nodoc
class _$ExampleStateCopyWithImpl<$Res, $Val extends ExampleState>
    implements $ExampleStateCopyWith<$Res> {
  _$ExampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurants = freezed,
    Object? adBannerLoaded = null,
  }) {
    return _then(_value.copyWith(
      restaurants: freezed == restaurants
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<ExampleDetailEntity>?,
      adBannerLoaded: null == adBannerLoaded
          ? _value.adBannerLoaded
          : adBannerLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleStateImplCopyWith<$Res>
    implements $ExampleStateCopyWith<$Res> {
  factory _$$ExampleStateImplCopyWith(
          _$ExampleStateImpl value, $Res Function(_$ExampleStateImpl) then) =
      __$$ExampleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExampleDetailEntity>? restaurants, bool adBannerLoaded});
}

/// @nodoc
class __$$ExampleStateImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateImpl>
    implements _$$ExampleStateImplCopyWith<$Res> {
  __$$ExampleStateImplCopyWithImpl(
      _$ExampleStateImpl _value, $Res Function(_$ExampleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurants = freezed,
    Object? adBannerLoaded = null,
  }) {
    return _then(_$ExampleStateImpl(
      restaurants: freezed == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<ExampleDetailEntity>?,
      adBannerLoaded: null == adBannerLoaded
          ? _value.adBannerLoaded
          : adBannerLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExampleStateImpl with DiagnosticableTreeMixin implements _ExampleState {
  const _$ExampleStateImpl(
      {final List<ExampleDetailEntity>? restaurants,
      this.adBannerLoaded = false})
      : _restaurants = restaurants;

  final List<ExampleDetailEntity>? _restaurants;
  @override
  List<ExampleDetailEntity>? get restaurants {
    final value = _restaurants;
    if (value == null) return null;
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool adBannerLoaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExampleState(restaurants: $restaurants, adBannerLoaded: $adBannerLoaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExampleState'))
      ..add(DiagnosticsProperty('restaurants', restaurants))
      ..add(DiagnosticsProperty('adBannerLoaded', adBannerLoaded));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleStateImpl &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants) &&
            (identical(other.adBannerLoaded, adBannerLoaded) ||
                other.adBannerLoaded == adBannerLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_restaurants), adBannerLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleStateImplCopyWith<_$ExampleStateImpl> get copyWith =>
      __$$ExampleStateImplCopyWithImpl<_$ExampleStateImpl>(this, _$identity);
}

abstract class _ExampleState implements ExampleState {
  const factory _ExampleState(
      {final List<ExampleDetailEntity>? restaurants,
      final bool adBannerLoaded}) = _$ExampleStateImpl;

  @override
  List<ExampleDetailEntity>? get restaurants;
  @override
  bool get adBannerLoaded;
  @override
  @JsonKey(ignore: true)
  _$$ExampleStateImplCopyWith<_$ExampleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
