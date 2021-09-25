import 'package:flutter_bloc_todoapp/services/data_service.dart';

import '../models/task.dart';

class TaskService {
  final rest = DataService();

  Future<List<Task>> getAllTasks() async {
    final data = await rest.get('tasks') as List;

    return data.map<Task>((json) => Task.fromJson(json)).toList();
  }

  Future<Task> createTask({Task task}) async {
    final jsonTodo = await rest.post('tasks', data: task.toJson());

    return Task.fromJson(jsonTodo);
  }

  Future<Task> updateTask({int id, Task task}) async {
    final data = await rest.patch('tasks/$id', data: task);
    return Task.fromJson(data);
  }

  Future<Task> deleteTask({int id}) async {
    final data = await rest.delete('tasks/$id');
    return Task.fromJson(data);
  }
}
