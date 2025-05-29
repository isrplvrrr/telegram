// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramGroupModelImpl _$$TelegramGroupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TelegramGroupModelImpl(
      id: (json['id'] as num?)?.toInt(),
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      tranzit_key: (json['tranzit_key'] as num?)?.toInt(),
      freq: json['freq'] as String?,
      time_start: json['time_start'] as String?,
      time_end: json['time_end'] as String?,
      notify: json['notify'] as bool?,
      our: json['our'] as bool?,
      image: json['image'] as String?,
      source_code: json['source_code'] as String?,
      source_name: json['source_name'] as String?,
      login: json['login'] as String?,
      password: json['password'] as String?,
      session: json['session'] as String?,
      url: json['url'] as String?,
      country_id: (json['country_id'] as num?)?.toInt(),
      country_name: json['country_name'] as String?,
      address: json['address'] as String?,
      coordinates: json['coordinates'] as String?,
    );

Map<String, dynamic> _$$TelegramGroupModelImplToJson(
        _$TelegramGroupModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'summary': instance.summary,
      'description': instance.description,
      'tranzit_key': instance.tranzit_key,
      'freq': instance.freq,
      'time_start': instance.time_start,
      'time_end': instance.time_end,
      'notify': instance.notify,
      'our': instance.our,
      'image': instance.image,
      'source_code': instance.source_code,
      'source_name': instance.source_name,
      'login': instance.login,
      'password': instance.password,
      'session': instance.session,
      'url': instance.url,
      'country_id': instance.country_id,
      'country_name': instance.country_name,
      'address': instance.address,
      'coordinates': instance.coordinates,
    };
