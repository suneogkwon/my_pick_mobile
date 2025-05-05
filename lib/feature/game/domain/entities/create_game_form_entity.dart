import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_game_form_entity.freezed.dart';
part 'create_game_form_entity.g.dart';

@freezed
abstract class CreateGameFormEntity with _$CreateGameFormEntity {
  const factory CreateGameFormEntity({String? title, String? description}) =
      _CreateGameFormEntity;

  factory CreateGameFormEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateGameFormEntityFromJson(json);
}
