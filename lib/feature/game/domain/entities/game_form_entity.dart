import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_form_entity.freezed.dart';

@freezed
abstract class GameFormEntity with _$GameFormEntity {
  const factory GameFormEntity({
    String? id,
    String? title,
    String? description,
    List<GameItemFormEntity>? items,
  }) = _GameFormEntity;
}

@freezed
abstract class GameItemFormEntity with _$GameItemFormEntity {
  const factory GameItemFormEntity({
    String? id,
    String? imageUrl,
    String? description,
  }) = _GameItemFormEntity;
}
