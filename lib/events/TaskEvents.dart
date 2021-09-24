import 'package:flutter_bloc_todoapp/models/task.dart';

enum EventTypes { fetch, delete }

class TaskEvent {
  Task task;
  List<Task> tasks;
  int taskIndex;
  EventTypes eventTypes;

  TaskEvent.fetch(List<Task> tasks) {
    this.tasks = tasks;
    this.eventTypes = EventTypes.fetch;
  }

  TaskEvent.delete(int index) {
    this.eventTypes = EventTypes.delete;
    this.taskIndex = index;
  }
}
