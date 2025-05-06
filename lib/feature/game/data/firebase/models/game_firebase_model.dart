import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';
import 'package:my_pick/feature/game/domain/entities/game_form_entity.dart';

part 'game_firebase_model.freezed.dart';

@freezed
class GameFirebaseModel with _$GameFirebaseModel {
  GameFirebaseModel({
    this.id,
    this.title,
    this.description,
    this.createdAt,
    this.updatedAt,
  }) : titleArray = title?.replaceAll(RegExp(r'\s+'), '').split('');

  @override
  final String? id;
  @override
  final String? title;
  @override
  final List<String>? titleArray;
  @override
  final String? description;
  @override
  final Timestamp? createdAt;
  @override
  final Timestamp? updatedAt;

  factory GameFirebaseModel.fromFormEntity(GameFormEntity entity) {
    return GameFirebaseModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
    );
  }

  factory GameFirebaseModel.fromEntity(GameEntity entity) {
    return GameFirebaseModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
    );
  }

  GameEntity toEntity() {
    return GameEntity(
      id: id!,
      title: title!,
      description: description!,
      items: [],
    );
  }

  factory GameFirebaseModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();

    return GameFirebaseModel(
      id: data?['id'] as String?,
      title: data?['title'] as String?,
      description: data?['description'] as String?,
      createdAt: data?['createdAt'] as Timestamp?,
      updatedAt: data?['updatedAt'] as Timestamp?,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (titleArray != null) 'titleArray': titleArray,
      if (description != null) 'description': description,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
    };
  }
}

@freezed
class GameItemFirebaseModel with _$GameItemFirebaseModel {
  const GameItemFirebaseModel({
    this.id,
    this.imageUrl,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  @override
  final String? id;
  @override
  final String? imageUrl;
  @override
  final String? description;
  @override
  final Timestamp? createdAt;
  @override
  final Timestamp? updatedAt;

  factory GameItemFirebaseModel.fromFormEntity(GameItemFormEntity entity) {
    return GameItemFirebaseModel(
      id: entity.id,
      imageUrl: entity.imageUrl,
      description: entity.description,
    );
  }

  factory GameItemFirebaseModel.fromEntity(GameItemEntity entity) {
    return GameItemFirebaseModel(
      id: entity.id,
      imageUrl: entity.imageUrl,
      description: entity.description,
    );
  }

  GameItemEntity toEntity() {
    return GameItemEntity(
      id: id!,
      imageUrl: imageUrl!,
      description: description!,
    );
  }

  factory GameItemFirebaseModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();

    return GameItemFirebaseModel(
      id: data?['id'] as String?,
      imageUrl: data?['imageUrl'] as String?,
      description: data?['description'] as String?,
      createdAt: data?['createdAt'] as Timestamp?,
      updatedAt: data?['updatedAt'] as Timestamp?,
    );
  }
  Map<String, dynamic> toFirestore() {
    return {
      if (id != null) 'id': id,
      if (imageUrl != null) 'imageUrl': imageUrl,
      if (description != null) 'description': description,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
    };
  }
}
