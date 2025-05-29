// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_model_save.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveModelSaveAdapter extends TypeAdapter<HiveModelSave> {
  @override
  final int typeId = 0;

  @override
  HiveModelSave read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveModelSave(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String?,
      url: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveModelSave obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveModelSaveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HiveModelSaveImpl _$$HiveModelSaveImplFromJson(Map<String, dynamic> json) =>
    _$HiveModelSaveImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$HiveModelSaveImplToJson(_$HiveModelSaveImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
    };
