// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameEntity _$GameEntityFromJson(Map<String, dynamic> json) => _GameEntity(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  participants:
      (json['participants'] as List<dynamic>)
          .map((e) => GameParticipantEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$GameEntityToJson(_GameEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'participants': instance.participants,
    };
