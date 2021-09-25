part of 'task_bloc.dart';

class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class FetchTasks extends TaskEvent {}

class DeleteTask extends TaskEvent {
  int id;
  DeleteTask({this.id});
}
