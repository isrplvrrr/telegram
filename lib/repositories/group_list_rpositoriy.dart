import 'package:dio/dio.dart';
import 'package:telegram_1/repositories/group_list/group_list.dart';

class GroupListRpositoriy {
  Future<List<GroupList>> getGroupList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,BNB&TSYMS=USD');

    final data = response.data as Map<String, dynamic>;
    final telegramGroupList = data.entries
        .map((e) => GroupList(
              name: e.key,
              avatar: (e.value as Map<String, dynamic>)['USD'],
            ))
        .toList();
    return telegramGroupList;
  }
}
