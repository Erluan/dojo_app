import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_detail_entity.freezed.dart';

@Freezed()
class ExampleDetailEntity with _$ExampleDetailEntity {
  const ExampleDetailEntity._();

  const factory ExampleDetailEntity({
    required String id,
    required String code,
    required String name,
    required String address,
    required double price,
  }) = _ExampleDetailEntity;
}
