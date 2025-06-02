import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:telegram_1/bloc/theme/theme_cubit.dart';
import 'package:telegram_1/group/bloc/telegram_group_bloc.dart';
import 'package:telegram_1/hive_save/hive_model_save.dart';
import 'package:telegram_1/repositories/group_list_rpositoriy.dart';
import 'package:telegram_1/routes/app_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:telegram_1/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(HiveModelSaveAdapter());
  await Hive.openBox<HiveModelSave>('saveBox');
  final box = await Hive.openBox<HiveModelSave>('saveBox');
  print("Коробка открыта? ${box.isOpen}");
  final repository = GroupListRpositoriy(box: box);
  final bloc = TelegramGroupBloc(repository: repository);

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider.value(value: bloc),
      BlocProvider(
        create: (context) => ThemeCubit(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(builder: (context) {
          return Scaffold(body:
              BlocBuilder<TelegramGroupBloc, TelegramGroupState>(
                  builder: (context, state) {
            return BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, themeState) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerConfig: AppRouter.router,
                theme: themeState.brightness == Brightness.dark
                    ? darkTheme
                    : lightTheme,
              );
            });
          }));
        }));
  }
}
