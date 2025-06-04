import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:telegram_1/hive_save/hive_model_save.dart';
import 'package:telegram_1/models/telegram_group_model.dart';

class GroupListRpositoriy {
  final Dio dio = Dio();
  final Box<HiveModelSave> box;
  GroupListRpositoriy({required this.box});

  Future<List<TelegramGroupModel>> getGroupList() async {
    try {
      // await box.clear();
      final cache = getFromHiveCache(box);
      print('${cache.isEmpty}');
      if (cache.isNotEmpty) {
        return getFromHiveCache(box);
      } else {
        final response = await dio.get(
          'https://api.wayhomeapp.org/tranzit/',
          options: Options(headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE3NDMwNzE1MzEsImlkIjoiMTMzOCIsIm5hbWUiOiI3YTFlZDVlMzExNzI0ODY1OThiNDFjNjkyYjI4Y2E1MSIsImV4cCI6MTc0MzA3MTU5MX0.3imQktTfSkA5aBIx9WXCaw3vpxJtprMfhD6K5EmBYWo'
          }),
        );
        final List<TelegramGroupModel> data = (response.data['data'] as List)
            .map((e) => TelegramGroupModel.fromJson(e))
            .toList();
        await saveToHive(data, box);
        print('${cache.isEmpty}');
        return data;
      }
    } catch (e) {
      return throw Exception('Error');
    }
  }

  Future<void> saveToHive(
      List<TelegramGroupModel> data, Box<HiveModelSave> box) async {
    await box.clear();
    final hiveData =
        data.map((item) => HiveModelSave.fromTelegramModel(item)).toList();
    await box.addAll(hiveData);
    print('данные в Hive: ${hiveData}');
  }

  List<TelegramGroupModel> getFromHiveCache(Box<HiveModelSave> box) {
    return box.values
        .map((hiveItem) => TelegramGroupModel.fromJson(hiveItem.toJson()))
        .toList();
  }
}
