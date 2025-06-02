import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../models/telegram_group_model.dart';

part 'hive_model_save.freezed.dart';
part 'hive_model_save.g.dart';

@freezed
@HiveType(typeId: 0)
class HiveModelSave with _$HiveModelSave {
  const factory HiveModelSave({
    @HiveField(0) required int id,
    @HiveField(1) required String summary,
    @HiveField(2) String? description,
    @HiveField(3) String? url,
  }) = _HiveModelSave;

  factory HiveModelSave.fromJson(Map<String, dynamic> json) =>
      _$HiveModelSaveFromJson(json);

  factory HiveModelSave.fromTelegramModel(TelegramGroupModel model) {
    return HiveModelSave(
      id: model.id ?? 0,
      summary: model.summary ?? 'No title',
      description: model.description,
      url: model.url,
    );
  }
}
