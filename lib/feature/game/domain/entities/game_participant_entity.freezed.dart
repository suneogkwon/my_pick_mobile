// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_participant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameParticipantEntity {

 String get id; String get imageUrl; String get comment;
/// Create a copy of GameParticipantEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameParticipantEntityCopyWith<GameParticipantEntity> get copyWith => _$GameParticipantEntityCopyWithImpl<GameParticipantEntity>(this as GameParticipantEntity, _$identity);

  /// Serializes this GameParticipantEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameParticipantEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.comment, comment) || other.comment == comment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,comment);

@override
String toString() {
  return 'GameParticipantEntity(id: $id, imageUrl: $imageUrl, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $GameParticipantEntityCopyWith<$Res>  {
  factory $GameParticipantEntityCopyWith(GameParticipantEntity value, $Res Function(GameParticipantEntity) _then) = _$GameParticipantEntityCopyWithImpl;
@useResult
$Res call({
 String id, String imageUrl, String comment
});




}
/// @nodoc
class _$GameParticipantEntityCopyWithImpl<$Res>
    implements $GameParticipantEntityCopyWith<$Res> {
  _$GameParticipantEntityCopyWithImpl(this._self, this._then);

  final GameParticipantEntity _self;
  final $Res Function(GameParticipantEntity) _then;

/// Create a copy of GameParticipantEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? comment = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GameParticipantEntity implements GameParticipantEntity {
  const _GameParticipantEntity({required this.id, required this.imageUrl, required this.comment});
  factory _GameParticipantEntity.fromJson(Map<String, dynamic> json) => _$GameParticipantEntityFromJson(json);

@override final  String id;
@override final  String imageUrl;
@override final  String comment;

/// Create a copy of GameParticipantEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameParticipantEntityCopyWith<_GameParticipantEntity> get copyWith => __$GameParticipantEntityCopyWithImpl<_GameParticipantEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameParticipantEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameParticipantEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.comment, comment) || other.comment == comment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,comment);

@override
String toString() {
  return 'GameParticipantEntity(id: $id, imageUrl: $imageUrl, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$GameParticipantEntityCopyWith<$Res> implements $GameParticipantEntityCopyWith<$Res> {
  factory _$GameParticipantEntityCopyWith(_GameParticipantEntity value, $Res Function(_GameParticipantEntity) _then) = __$GameParticipantEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String imageUrl, String comment
});




}
/// @nodoc
class __$GameParticipantEntityCopyWithImpl<$Res>
    implements _$GameParticipantEntityCopyWith<$Res> {
  __$GameParticipantEntityCopyWithImpl(this._self, this._then);

  final _GameParticipantEntity _self;
  final $Res Function(_GameParticipantEntity) _then;

/// Create a copy of GameParticipantEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? comment = null,}) {
  return _then(_GameParticipantEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
