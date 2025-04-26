import 'package:flutter/material.dart';
import 'package:telegram_1/group/bloc/telegram_group_bloc.dart';
import 'package:telegram_1/repositories/group_list_rpositoriy.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<MainScreen>? _telegramGroupList;

  final _telegramGroupBloc = TelegramGroupBloc(
      AbstractGroupRepository(name: 'aafawfafw', quantity: 5.0));

  @override
  void initState() {
    _telegramGroupBloc.add(LoadTelegramGroup());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Telegram'), actions: []),
      body: (_telegramGroupList == null)
          ? Container(
              child: FloatingActionButton(onPressed: () {
                GroupListRpositoriy().getGroupList();
              }),
            )
          : ListView.separated(
              padding: const EdgeInsets.only(top: 16),
              itemCount: _telegramGroupList!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final group = _telegramGroupList![i];
                return Container(child: FloatingActionButton(onPressed: () {
                  GroupListRpositoriy().getGroupList;
                }));
              }),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// enum DataState {
//   initial,
//   loading,
//   loaded,
//   error,
// }

// class _MyAppState extends State<MyApp> {
//   List<Task> tasks = [];
//   DataState dataState = DataState.initial;
//   String errorMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     loadTasks();
//   }

//   Future<void> loadTasks() async {
//     setState(() {
//       dataState = DataState.loading;
//       errorMessage = '';
//     });

//     try {
//       // Попытка загрузить из сети
//       final dio = Dio();
//       final response = await dio
//           .get('https://jsonplaceholder.typicode.com/todos'); // Пример API

//       if (response.statusCode == 200) {
//         List<dynamic> data = response.data;
//         List<Task> loadedTasks = data
//             .map((item) => Task(
//                   id: item['id'],
//                   title: item['title'],
//                   completed: item['completed'] ?? false, // Обработка null
//                 ))
//             .toList();

//         // Сохранение в Hive
//         final box = Hive.box<Task>('tasks');
//         await box.clear();
//         await box.addAll(loadedTasks);

//         setState(() {
//           tasks = loadedTasks;
//           dataState = DataState.loaded;
//         });
//       } else {
//         throw Exception('Failed to load data from API');
//       }
//     } catch (e) {
//       // Если произошла ошибка, загружаем из Hive
//       setState(() {
//         errorMessage = 'Failed to load data from API: $e';
//       });

//       try {
//         final box = Hive.box<Task>('tasks');
//         List<Task> cachedTasks = box.values.toList();
//         setState(() {
//           tasks = cachedTasks;
//           dataState = DataState.loaded;
//           if (cachedTasks.isEmpty) {
//             errorMessage = 'No data in API and cache is empty';
//           }
//         });
//       } catch (hiveError) {
//         setState(() {
//           dataState = DataState.error;
//           errorMessage =
//               'Failed to load data from API or cache: $e, $hiveError';
//         });
//       }
//     } finally {
//       if (dataState == DataState.loading) {
//         // Если так и не загрузились, то ошибка
//         setState(() {
//           dataState = DataState.error;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Tasks')),
//         body: buildBody(),
//         floatingActionButton: FloatingActionButton(
//           onPressed: loadTasks,
//           child: Icon(Icons.refresh),
//         ),
//       ),
//     );
//   }

//   Widget buildBody() {
//     switch (dataState) {
//       case DataState.initial:
//         return Center(child: Text('Press the button to load data'));
//       case DataState.loading:
//         return Center(child: CircularProgressIndicator());
//       case DataState.loaded:
//         return ListView.builder(
//           itemCount: tasks.length,
//           itemBuilder: (context, index) {
//             final task = tasks[index];
//             return ListTile(
//               title: Text(task.title),
//               subtitle: Text('ID: ${task.id}, Completed: ${task.completed}'),
//             );
//           },
//         );
//       case DataState.error:
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 errorMessage,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.red),
//               ),
//               ElevatedButton(
//                 onPressed: loadTasks,
//                 child: Text('Retry'),
//               ),
//             ],
//           ),
//         );
//       default:
//         return Center(child: Text('Unknown state'));
//     }
//   }
// }
