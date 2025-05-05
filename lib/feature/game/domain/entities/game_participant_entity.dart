import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_participant_entity.freezed.dart';
part 'game_participant_entity.g.dart';

@freezed
abstract class GameParticipantEntity with _$GameParticipantEntity {
  const factory GameParticipantEntity({
    required String id,
    required String imageUrl,
    required String comment,
  }) = _GameParticipantEntity;

  factory GameParticipantEntity.fromJson(Map<String, dynamic> json) =>
      _$GameParticipantEntityFromJson(json);
}
