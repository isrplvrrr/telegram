import 'package:go_router/go_router.dart';
import 'package:telegram_1/screens/error_screen.dart';
import 'package:telegram_1/screens/main_screen.dart';
import 'package:telegram_1/screens/settings_screen.dart';

// импортируй другие экраны по необходимости
class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'main',
        builder: (context, state) => MainScreen(),
      ),
      GoRoute(
        name: 'settings',
        path: '/settings',
        builder: (context, state) => SettingsScreen(),
      ),
    ],
    errorBuilder: (context, state) => ErrorScreen(),
  );
}
