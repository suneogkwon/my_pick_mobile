import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_pick/feature/game/domain/entities/game_participant_entity.dart';

part 'game_entity.freezed.dart';
part 'game_entity.g.dart';

@freezed
abstract class GameEntity with _$GameEntity {
  GameEntity._();
  factory GameEntity({
    required String id,
    required String title,
    required String description,
    required List<GameParticipantEntity> participants,
  }) = _GameEntity;

  factory GameEntity.fromJson(Map<String, dynamic> json) =>
      _$GameEntityFromJson(json);
}
