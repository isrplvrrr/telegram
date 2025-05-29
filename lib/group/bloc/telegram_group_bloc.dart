import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram_1/models/telegram_group_model.dart';
import 'package:telegram_1/repositories/group_list_rpositoriy.dart';
part 'telegram_group_state.dart';
part 'telegram_group_event.dart';

class TelegramGroupBloc extends Bloc<TelegramGroupEvent, TelegramGroupState> {
  final GroupListRpositoriy repository;

  TelegramGroupBloc({required this.repository}) : super(GroupInitialState()) {
    on<TelegramGroupEvent>((event, emit) async {
      emit(GroupLoadingState());
      try {
        final data = await repository.getGroupList();
        print('Данные в Блок: ${data.length} элементов');
        print('Первый элемент: ${data[0].toString()} элементов');

        emit(GroupLoadedState(data));
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    });
  }
}
