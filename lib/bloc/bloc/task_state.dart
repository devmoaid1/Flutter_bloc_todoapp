part of 'task_bloc.dart';

class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object> get props => [];
}

class TaskInitial extends TaskState {}

class LoadingState extends TaskState {}

class FetchSuccess extends TaskState {
  List<Task> tasks;
  FetchSuccess({this.tasks});
}

// ignore: must_be_immutable
class ErrorMassage extends TaskState {
  String massage;
  ErrorMassage({this.massage});
}

class DeleteSuccess extends TaskState {
  int id;
  DeleteSuccess({this.id});
}
