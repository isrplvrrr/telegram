// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hive_model_save.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HiveModelSave _$HiveModelSaveFromJson(Map<String, dynamic> json) {
  return _HiveModelSave.fromJson(json);
}

/// @nodoc
mixin _$HiveModelSave {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this HiveModelSave to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HiveModelSave
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HiveModelSaveCopyWith<HiveModelSave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveModelSaveCopyWith<$Res> {
  factory $HiveModelSaveCopyWith(
          HiveModelSave value, $Res Function(HiveModelSave) then) =
      _$HiveModelSaveCopyWithImpl<$Res, HiveModelSave>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) String? description,
      @HiveField(3) String? url});
}

/// @nodoc
class _$HiveModelSaveCopyWithImpl<$Res, $Val extends HiveModelSave>
    implements $HiveModelSaveCopyWith<$Res> {
  _$HiveModelSaveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HiveModelSave
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HiveModelSaveImplCopyWith<$Res>
    implements $HiveModelSaveCopyWith<$Res> {
  factory _$$HiveModelSaveImplCopyWith(
          _$HiveModelSaveImpl value, $Res Function(_$HiveModelSaveImpl) then) =
      __$$HiveModelSaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) String? description,
      @HiveField(3) String? url});
}

/// @nodoc
class __$$HiveModelSaveImplCopyWithImpl<$Res>
    extends _$HiveModelSaveCopyWithImpl<$Res, _$HiveModelSaveImpl>
    implements _$$HiveModelSaveImplCopyWith<$Res> {
  __$$HiveModelSaveImplCopyWithImpl(
      _$HiveModelSaveImpl _value, $Res Function(_$HiveModelSaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of HiveModelSave
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_$HiveModelSaveImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HiveModelSaveImpl implements _HiveModelSave {
  const _$HiveModelSaveImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) this.description,
      @HiveField(3) this.url});

  factory _$HiveModelSaveImpl.fromJson(Map<String, dynamic> json) =>
      _$$HiveModelSaveImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final String? url;

  @override
  String toString() {
    return 'HiveModelSave(id: $id, title: $title, description: $description, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HiveModelSaveImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, url);

  /// Create a copy of HiveModelSave
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HiveModelSaveImplCopyWith<_$HiveModelSaveImpl> get copyWith =>
      __$$HiveModelSaveImplCopyWithImpl<_$HiveModelSaveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HiveModelSaveImplToJson(
      this,
    );
  }

  @override
  TelegramGroupModel toTelegramModel() {
    // TODO: implement toTelegramModel
    throw UnimplementedError();
  }
}

abstract class _HiveModelSave implements HiveModelSave {
  const factory _HiveModelSave(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String title,
      @HiveField(2) final String? description,
      @HiveField(3) final String? url}) = _$HiveModelSaveImpl;

  factory _HiveModelSave.fromJson(Map<String, dynamic> json) =
      _$HiveModelSaveImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  String? get url;

  /// Create a copy of HiveModelSave
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HiveModelSaveImplCopyWith<_$HiveModelSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
