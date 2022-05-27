import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../business_logic/blocs/task_bloc.dart';
import 'task/task_loading_view.dart';
import 'task/task_view.dart';

class BottomPanel extends StatelessWidget {
  const BottomPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0), topRight: Radius.circular(24.0)),
      ),
      padding: const EdgeInsets.only(top: 30, left: 15, right: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Today task list',
            style: TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 10),
          Expanded(
              child: BlocBuilder<TaskBloc, TaskState>(
                  builder: (context, state) {
                    if(state is TaskLoading){
                      return const Center(
                        child: TaskLoadingView(),
                      );
                    } else if ( state is TaskLoaded) {
                      return TaskView(
                        tasks: state.tasks,
                      );
                    } else {
                      return const Center(
                        child: Icon(Icons.error),
                      );
                    }
                  }
              )
          )
        ],
      ),
    );
  }
}
