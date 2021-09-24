import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_todoapp/bloc/bloc/task_bloc.dart';
import 'package:flutter_bloc_todoapp/screens/TaskContainer.dart';

class TasksScreen extends StatefulWidget {
  TasksScreen({Key key, this.title}) : super(key: key);

  final String title;
  TaskBloc bloc;
  @override
  _TasksScreen createState() => _TasksScreen();
}

class _TasksScreen extends State<TasksScreen> {
  String title;
  TaskBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<TaskBloc>(context);
    bloc.add(FetchTasks());
    print(bloc);
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.normal,
                color: Color(0xff0ACFA0)),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            if (state is TaskInitial) {
              return Center(child: CircularProgressIndicator());
            } else if (state is LoadingState) {
              return CircularProgressIndicator();
            } else if (state is FetchSuccess) {
              return ListView.builder(
                  itemCount: state.tasks.length,
                  itemBuilder: (_, index) {
                    return TaskContainer(
                        title: state.tasks[index].title,
                        subtitle: state.tasks[index].subTitle);
                  });
            } else if (state is ErrorMassage) {
              return ErrorWidget(state.massage.toString());
            }
            return Container();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff0ACFA0),
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
