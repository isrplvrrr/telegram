import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:telegram_1/screens/main_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram App',
      themeMode: ThemeMode.system,
      theme: ThemeData.dark(),
      home: MainScreen(),
      useInheritedMediaQuery: true, // Добавь эту строку
      locale: DevicePreview.locale(context), // Добавь эту строку
      builder: DevicePreview.appBuilder, // Добавь эту строку
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:path_provider/path_provider.dart' as path_provider; // Импорт path_provider
// import 'package:telegram_1/screens/main_screen.dart';

// import 'group.dart'; // Импорт нашей модели данных

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized(); // Важно!
//   final appDocumentDir = await path_provider.getApplicationDocumentsDirectory(); // Получаем путь к папке документов
//   Hive.init(appDocumentDir.path); // Инициализируем Hive с указанием пути
//   Hive.registerAdapter(GroupAdapter()); // Регистрируем адаптер для нашего класса Group
//   await Hive.openBox<Group>('groups'); // Открываем "коробку" для хранения групп
//   runApp(MyApp());
// }
