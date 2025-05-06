// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameEntity {

 String get id; String get title; String get description; List<GameItemEntity> get items;
/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameEntityCopyWith<GameEntity> get copyWith => _$GameEntityCopyWithImpl<GameEntity>(this as GameEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'GameEntity(id: $id, title: $title, description: $description, items: $items)';
}


}

/// @nodoc
abstract mixin class $GameEntityCopyWith<$Res>  {
  factory $GameEntityCopyWith(GameEntity value, $Res Function(GameEntity) _then) = _$GameEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, List<GameItemEntity> items
});




}
/// @nodoc
class _$GameEntityCopyWithImpl<$Res>
    implements $GameEntityCopyWith<$Res> {
  _$GameEntityCopyWithImpl(this._self, this._then);

  final GameEntity _self;
  final $Res Function(GameEntity) _then;

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GameItemEntity>,
  ));
}

}


/// @nodoc


class _GameEntity implements GameEntity {
   _GameEntity({required this.id, required this.title, required this.description, required final  List<GameItemEntity> items}): _items = items;
  

@override final  String id;
@override final  String title;
@override final  String description;
 final  List<GameItemEntity> _items;
@override List<GameItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameEntityCopyWith<_GameEntity> get copyWith => __$GameEntityCopyWithImpl<_GameEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'GameEntity(id: $id, title: $title, description: $description, items: $items)';
}


}

/// @nodoc
abstract mixin class _$GameEntityCopyWith<$Res> implements $GameEntityCopyWith<$Res> {
  factory _$GameEntityCopyWith(_GameEntity value, $Res Function(_GameEntity) _then) = __$GameEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, List<GameItemEntity> items
});




}
/// @nodoc
class __$GameEntityCopyWithImpl<$Res>
    implements _$GameEntityCopyWith<$Res> {
  __$GameEntityCopyWithImpl(this._self, this._then);

  final _GameEntity _self;
  final $Res Function(_GameEntity) _then;

/// Create a copy of GameEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? items = null,}) {
  return _then(_GameEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GameItemEntity>,
  ));
}


}

/// @nodoc
mixin _$GameItemEntity {

 String get id; String get imageUrl; String get description;
/// Create a copy of GameItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameItemEntityCopyWith<GameItemEntity> get copyWith => _$GameItemEntityCopyWithImpl<GameItemEntity>(this as GameItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,description);

@override
String toString() {
  return 'GameItemEntity(id: $id, imageUrl: $imageUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class $GameItemEntityCopyWith<$Res>  {
  factory $GameItemEntityCopyWith(GameItemEntity value, $Res Function(GameItemEntity) _then) = _$GameItemEntityCopyWithImpl;
@useResult
$Res call({
 String id, String imageUrl, String description
});




}
/// @nodoc
class _$GameItemEntityCopyWithImpl<$Res>
    implements $GameItemEntityCopyWith<$Res> {
  _$GameItemEntityCopyWithImpl(this._self, this._then);

  final GameItemEntity _self;
  final $Res Function(GameItemEntity) _then;

/// Create a copy of GameItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _GameItemEntity implements GameItemEntity {
  const _GameItemEntity({required this.id, required this.imageUrl, required this.description});
  

@override final  String id;
@override final  String imageUrl;
@override final  String description;

/// Create a copy of GameItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameItemEntityCopyWith<_GameItemEntity> get copyWith => __$GameItemEntityCopyWithImpl<_GameItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,description);

@override
String toString() {
  return 'GameItemEntity(id: $id, imageUrl: $imageUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class _$GameItemEntityCopyWith<$Res> implements $GameItemEntityCopyWith<$Res> {
  factory _$GameItemEntityCopyWith(_GameItemEntity value, $Res Function(_GameItemEntity) _then) = __$GameItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String imageUrl, String description
});




}
/// @nodoc
class __$GameItemEntityCopyWithImpl<$Res>
    implements _$GameItemEntityCopyWith<$Res> {
  __$GameItemEntityCopyWithImpl(this._self, this._then);

  final _GameItemEntity _self;
  final $Res Function(_GameItemEntity) _then;

/// Create a copy of GameItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? description = null,}) {
  return _then(_GameItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
