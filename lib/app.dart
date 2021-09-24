import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_todoapp/bloc/bloc/task_bloc.dart';
import 'package:flutter_bloc_todoapp/services/task_service.dart';

import 'screens/homeScreen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => TaskBloc(TaskInitial(), TaskService()),
        child: TasksScreen(title: 'What To Do'),
      ),
    );
  }
}
