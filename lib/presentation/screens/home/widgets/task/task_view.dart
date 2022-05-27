import 'package:checkmark/checkmark.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todos/data/models/task.dart';
import 'package:todos/data/repositories/cloth_repository.dart';

class TaskView extends StatefulWidget {
  final List<Task> tasks;
  const TaskView({Key? key, required this.tasks}) : super(key: key);

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(widget.tasks[index].title),
          leading: CircleAvatar(
            radius: 24.0,
            backgroundColor: CategoryRepository().categories[1].color,
            child: ClipRRect(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(CategoryRepository().categories[1].icon, color: Colors.white),
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          trailing: SizedBox(
            height: 20,
            width: 20,
            child: InkWell(
              onTap: () {
                setState(() {
                  widget.tasks[index].status = !widget.tasks[index].status;
                });
              },
              child: CheckMark(
                active: widget.tasks[index].status,
                strokeWidth: 2,
                inactiveColor: Colors.grey,
                curve: Curves.decelerate,
                duration: const Duration(milliseconds: 500),
              ),
            ),
          ),
        );
      },
    );
  }
}
