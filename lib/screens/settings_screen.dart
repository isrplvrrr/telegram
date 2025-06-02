import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:go_router/go_router.dart';
import 'package:telegram_1/bloc/theme/theme_cubit.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({
    super.key,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final brightness = context.watch<ThemeCubit>().state.brightness;
    return MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: Row(
          children: [
            Column(children: [
              SafeArea(
                  child: TextButton(
                child: Icon(Icons.arrow_back_rounded),
                onPressed: () => context.go('/'),
              )),
              Padding(padding: EdgeInsets.symmetric(vertical: 200)),
              Container(
                child: FlutterSwitch(
                    activeText: "Темный режим",
                    inactiveText: "Светлый режим",
                    value: brightness == Brightness.dark,
                    activeColor: Colors.black,
                    inactiveColor: Colors.blueGrey,
                    valueFontSize: 16.0,
                    width: 400,
                    height: 80,
                    borderRadius: 30.0,
                    showOnOff: true,
                    onToggle: (value) {
                      context.read<ThemeCubit>().setThemeBrightness(
                          value ? Brightness.dark : Brightness.light);
                    }),
              ),
            ]),
          ],
        ));
  }
}
