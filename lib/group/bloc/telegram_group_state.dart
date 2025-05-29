part of 'telegram_group_bloc.dart';

class TelegramGroupState {}

class GroupInitialState extends TelegramGroupState {}

class GroupLoadingState extends TelegramGroupState {}

class GroupLoadedState extends TelegramGroupState {
  final List<TelegramGroupModel> data;
  GroupLoadedState(this.data);
}

class ErrorState extends TelegramGroupState {
  final String error;
  ErrorState(this.error);
}
