import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_todoapp/models/task.dart';
import 'package:flutter_bloc_todoapp/services/task_service.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskService tasks;
  TaskBloc(TaskState initialState, this.tasks) : super(initialState);

  Stream<TaskState> mapEventToState(TaskEvent event) async* {
    if (event is FetchTasks) {
      yield LoadingState();
      try {
        var tasksList = await tasks.getAllTasks();
        yield FetchSuccess(tasks: tasksList);
      } catch (err) {
        yield ErrorMassage(massage: err.toString());
      }
    } else if (event is DeleteTask) {
      var id = event.id;
      try {
        await tasks.deleteTask(id: id);
        var newTasks = await tasks.getAllTasks();
        yield LoadingState();
        yield FetchSuccess(tasks: newTasks);
      } catch (err) {
        yield ErrorMassage(massage: err.toString());
      }
    }
  }
}
