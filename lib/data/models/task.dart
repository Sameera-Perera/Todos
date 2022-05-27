import 'dart:convert';

List<Task> taskListFromJson(String val) => List<Task>.from(
    json.decode(val).map((banner) => Task.fromJson(banner))
);

class Task {
  final int id;
  final String title;
  bool status;

  Task({required this.id, required this.title, required this.status});

  factory Task.fromJson(Map<String, dynamic> data) => Task(
      id: data['id'],
      title: data['title'],
      status: data['completed'],
  );
}
