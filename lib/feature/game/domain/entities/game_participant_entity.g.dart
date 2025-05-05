// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_participant_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameParticipantEntity _$GameParticipantEntityFromJson(
  Map<String, dynamic> json,
) => _GameParticipantEntity(
  id: json['id'] as String,
  imageUrl: json['imageUrl'] as String,
  comment: json['comment'] as String,
);

Map<String, dynamic> _$GameParticipantEntityToJson(
  _GameParticipantEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'imageUrl': instance.imageUrl,
  'comment': instance.comment,
};
