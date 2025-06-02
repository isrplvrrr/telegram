import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:telegram_1/group/bloc/telegram_group_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TelegramGroupBloc>().add(TelegramGroupEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Telegram'), actions: [
        FloatingActionButton(
          onPressed: () {
            context.go('/settings');
          },
          child: Icon(Icons.settings),
        )
      ]),
      body: BlocBuilder<TelegramGroupBloc, TelegramGroupState>(
        builder: (context, state) {
          if (state is GroupLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GroupLoadedState) {
            final groups = state.data;
            if (groups.isEmpty) {
              return const Center(child: Text('Нет данных для отображения'));
            }
            return ListView.builder(
              itemCount: groups.length,
              itemBuilder: (context, index) {
                final group = groups[index];
                return ListTile(
                  title: TextButton(
                      onPressed: () {
                        launch(group.url ?? '${group.url}');
                      },
                      child: Text(group.summary ?? '${group.summary}')),
                  // subtitle: Text(group.description ?? ""),
                  // trailing: Text("ID: ${group.id}"),
                );
              },
            );
          } else if (state is ErrorState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ошибка: ${state.error}"),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<TelegramGroupBloc>()
                          .add(TelegramGroupEvent());
                    },
                    child: const Text('Повторить'),
                  ),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
