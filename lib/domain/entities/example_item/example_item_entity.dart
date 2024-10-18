import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_item_entity.freezed.dart';

@Freezed()
class ExampleItemEntity with _$ExampleItemEntity {
  const ExampleItemEntity._();

  const factory ExampleItemEntity({
    required String title,
    required String description,
  }) = _ExampleItemEntity;
}
