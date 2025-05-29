import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'telegram_group_model.freezed.dart';
part 'telegram_group_model.g.dart';

@freezed
@JsonSerializable()
class TelegramGroupModel with _$TelegramGroupModel {
  const factory TelegramGroupModel({
    int? id,
    String? summary,
    String? description,
    int? tranzit_key,
    String? freq,
    String? time_start,
    String? time_end,
    bool? notify,
    bool? our,
    String? image,
    String? source_code,
    String? source_name,
    String? login,
    String? password,
    String? session,
    String? url,
    int? country_id,
    String? country_name,
    String? address,
    String? coordinates,
  }) = _TelegramGroupModel;

  factory TelegramGroupModel.fromJson(Map<String, dynamic> json) =>
      _$TelegramGroupModelFromJson(json);
}
