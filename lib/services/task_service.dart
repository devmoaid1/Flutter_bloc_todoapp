import 'package:flutter_bloc_todoapp/services/data_service.dart';

import '../models/task.dart';

class TaskService {
  Future<List<Task>> getAllTasks() async {
    final data = await dataService.get('tasks') as List;

    return data.map<Task>((json) => Task.fromJson(json)).toList();
  }

  // Future<Task> createTask({Task task}) async {
  //   final jsonTodo = await dataService.post('task/', data: task.toJson());

  //   return Task.fromJson(jsonTodo);
  // }

  Future<Task> updateTask({int id, String title}) async {
    final data = await dataService.patch('tasks/$id', data: {'title': title});
    return Task.fromJson(data);
  }

  Future<Task> deleteTask({int id}) async {
    final data = await dataService.delete('tasks/$id');
    return Task.fromJson(data);
  }
}
