import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_entity.freezed.dart';

@freezed
abstract class GameEntity with _$GameEntity {
  factory GameEntity({
    required String id,
    required String title,
    required String description,
    required List<GameItemEntity> items,
  }) = _GameEntity;
}

@freezed
abstract class GameItemEntity with _$GameItemEntity {
  const factory GameItemEntity({
    required String id,
    required String imageUrl,
    required String description,
  }) = _GameItemEntity;
}
