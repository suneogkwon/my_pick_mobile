// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_game_form_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateGameFormEntity {

 String? get title; String? get description;
/// Create a copy of CreateGameFormEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGameFormEntityCopyWith<CreateGameFormEntity> get copyWith => _$CreateGameFormEntityCopyWithImpl<CreateGameFormEntity>(this as CreateGameFormEntity, _$identity);

  /// Serializes this CreateGameFormEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGameFormEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'CreateGameFormEntity(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreateGameFormEntityCopyWith<$Res>  {
  factory $CreateGameFormEntityCopyWith(CreateGameFormEntity value, $Res Function(CreateGameFormEntity) _then) = _$CreateGameFormEntityCopyWithImpl;
@useResult
$Res call({
 String? title, String? description
});




}
/// @nodoc
class _$CreateGameFormEntityCopyWithImpl<$Res>
    implements $CreateGameFormEntityCopyWith<$Res> {
  _$CreateGameFormEntityCopyWithImpl(this._self, this._then);

  final CreateGameFormEntity _self;
  final $Res Function(CreateGameFormEntity) _then;

/// Create a copy of CreateGameFormEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CreateGameFormEntity implements CreateGameFormEntity {
  const _CreateGameFormEntity({this.title, this.description});
  factory _CreateGameFormEntity.fromJson(Map<String, dynamic> json) => _$CreateGameFormEntityFromJson(json);

@override final  String? title;
@override final  String? description;

/// Create a copy of CreateGameFormEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGameFormEntityCopyWith<_CreateGameFormEntity> get copyWith => __$CreateGameFormEntityCopyWithImpl<_CreateGameFormEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGameFormEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGameFormEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'CreateGameFormEntity(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreateGameFormEntityCopyWith<$Res> implements $CreateGameFormEntityCopyWith<$Res> {
  factory _$CreateGameFormEntityCopyWith(_CreateGameFormEntity value, $Res Function(_CreateGameFormEntity) _then) = __$CreateGameFormEntityCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description
});




}
/// @nodoc
class __$CreateGameFormEntityCopyWithImpl<$Res>
    implements _$CreateGameFormEntityCopyWith<$Res> {
  __$CreateGameFormEntityCopyWithImpl(this._self, this._then);

  final _CreateGameFormEntity _self;
  final $Res Function(_CreateGameFormEntity) _then;

/// Create a copy of CreateGameFormEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,}) {
  return _then(_CreateGameFormEntity(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
