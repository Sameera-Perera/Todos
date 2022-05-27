import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todos/data/services/remote_todo_service.dart';

import '../../data/models/task.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskLoading()) {
    on<LoadTask>(_onLoadTask);
  }

  void _onLoadTask(LoadTask event, Emitter<TaskState> emit) async {
    try {
      emit(TaskLoading());
      final result = await RemoteTaskService().get();
      if(result != null){
        final List<Task> _tasks = taskListFromJson(result.body);
        emit(TaskLoaded(
            tasks: _tasks
        ));
      }
    } catch (e){
      emit(TaskError());
    }
  }
}
