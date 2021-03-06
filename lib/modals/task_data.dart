import 'package:flutter/material.dart';
import 'package:todoey_flutter/modals/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy something'),
    Task(name: 'get these'),
    Task(name: 'hello'),
  ];
  void addTask(String newTitle) {
    final task = Task(name: newTitle);
    tasks.add(task);
    notifyListeners();
  }
}
