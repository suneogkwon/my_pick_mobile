// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_form_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameFormEntity {

 String? get id; String? get title; String? get description; List<GameItemFormEntity>? get items;
/// Create a copy of GameFormEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameFormEntityCopyWith<GameFormEntity> get copyWith => _$GameFormEntityCopyWithImpl<GameFormEntity>(this as GameFormEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameFormEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'GameFormEntity(id: $id, title: $title, description: $description, items: $items)';
}


}

/// @nodoc
abstract mixin class $GameFormEntityCopyWith<$Res>  {
  factory $GameFormEntityCopyWith(GameFormEntity value, $Res Function(GameFormEntity) _then) = _$GameFormEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? description, List<GameItemFormEntity>? items
});




}
/// @nodoc
class _$GameFormEntityCopyWithImpl<$Res>
    implements $GameFormEntityCopyWith<$Res> {
  _$GameFormEntityCopyWithImpl(this._self, this._then);

  final GameFormEntity _self;
  final $Res Function(GameFormEntity) _then;

/// Create a copy of GameFormEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GameItemFormEntity>?,
  ));
}

}


/// @nodoc


class _GameFormEntity implements GameFormEntity {
  const _GameFormEntity({this.id, this.title, this.description, final  List<GameItemFormEntity>? items}): _items = items;
  

@override final  String? id;
@override final  String? title;
@override final  String? description;
 final  List<GameItemFormEntity>? _items;
@override List<GameItemFormEntity>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GameFormEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameFormEntityCopyWith<_GameFormEntity> get copyWith => __$GameFormEntityCopyWithImpl<_GameFormEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameFormEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'GameFormEntity(id: $id, title: $title, description: $description, items: $items)';
}


}

/// @nodoc
abstract mixin class _$GameFormEntityCopyWith<$Res> implements $GameFormEntityCopyWith<$Res> {
  factory _$GameFormEntityCopyWith(_GameFormEntity value, $Res Function(_GameFormEntity) _then) = __$GameFormEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? description, List<GameItemFormEntity>? items
});




}
/// @nodoc
class __$GameFormEntityCopyWithImpl<$Res>
    implements _$GameFormEntityCopyWith<$Res> {
  __$GameFormEntityCopyWithImpl(this._self, this._then);

  final _GameFormEntity _self;
  final $Res Function(_GameFormEntity) _then;

/// Create a copy of GameFormEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? items = freezed,}) {
  return _then(_GameFormEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GameItemFormEntity>?,
  ));
}


}

/// @nodoc
mixin _$GameItemFormEntity {

 String? get id; File? get image; String? get description;
/// Create a copy of GameItemFormEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameItemFormEntityCopyWith<GameItemFormEntity> get copyWith => _$GameItemFormEntityCopyWithImpl<GameItemFormEntity>(this as GameItemFormEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameItemFormEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,image,description);

@override
String toString() {
  return 'GameItemFormEntity(id: $id, image: $image, description: $description)';
}


}

/// @nodoc
abstract mixin class $GameItemFormEntityCopyWith<$Res>  {
  factory $GameItemFormEntityCopyWith(GameItemFormEntity value, $Res Function(GameItemFormEntity) _then) = _$GameItemFormEntityCopyWithImpl;
@useResult
$Res call({
 String? id, File? image, String? description
});




}
/// @nodoc
class _$GameItemFormEntityCopyWithImpl<$Res>
    implements $GameItemFormEntityCopyWith<$Res> {
  _$GameItemFormEntityCopyWithImpl(this._self, this._then);

  final GameItemFormEntity _self;
  final $Res Function(GameItemFormEntity) _then;

/// Create a copy of GameItemFormEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? image = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _GameItemFormEntity implements GameItemFormEntity {
  const _GameItemFormEntity({this.id, this.image, this.description});
  

@override final  String? id;
@override final  File? image;
@override final  String? description;

/// Create a copy of GameItemFormEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameItemFormEntityCopyWith<_GameItemFormEntity> get copyWith => __$GameItemFormEntityCopyWithImpl<_GameItemFormEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameItemFormEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,image,description);

@override
String toString() {
  return 'GameItemFormEntity(id: $id, image: $image, description: $description)';
}


}

/// @nodoc
abstract mixin class _$GameItemFormEntityCopyWith<$Res> implements $GameItemFormEntityCopyWith<$Res> {
  factory _$GameItemFormEntityCopyWith(_GameItemFormEntity value, $Res Function(_GameItemFormEntity) _then) = __$GameItemFormEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, File? image, String? description
});




}
/// @nodoc
class __$GameItemFormEntityCopyWithImpl<$Res>
    implements _$GameItemFormEntityCopyWith<$Res> {
  __$GameItemFormEntityCopyWithImpl(this._self, this._then);

  final _GameItemFormEntity _self;
  final $Res Function(_GameItemFormEntity) _then;

/// Create a copy of GameItemFormEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? image = freezed,Object? description = freezed,}) {
  return _then(_GameItemFormEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
