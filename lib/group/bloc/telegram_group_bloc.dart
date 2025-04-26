import 'package:flutter_bloc/flutter_bloc.dart';

part 'telegram_group_event.dart';
part 'telegram_group_state.dart';

class TelegramGroupBloc extends Bloc<TelegramGroupEvent, TelegramGroupState> {
  TelegramGroupBloc(this.groupsRepository) : super(TelegramGroupInitial()) {
    on<LoadTelegramGroup>((event, emit) {
      print('Crypto list loading');
    });
  }
  final AbstractGroupRepository groupsRepository;
}

class AbstractGroupRepository {
  final String? name;
  final double? quantity;

  AbstractGroupRepository({
    this.name,
    this.quantity,
  });
}
