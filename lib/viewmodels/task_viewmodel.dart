import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/task.dart';

class TaskViewModel extends ChangeNotifier {
  DateTime _selectedDay = DateTime.now();
  final List<Task> _tasks = [];

  DateTime get selectedDay => _selectedDay;
  List<Task> get tasks => _tasks.where((task) => isSameDay(task.date, _selectedDay)).toList();

  void setSelectedDay(DateTime day) {
    _selectedDay = day;
    notifyListeners();
  }

  void addTask(String title) {
    _tasks.add(Task(title: title, date: _selectedDay));
    notifyListeners();
  }

  void toggleTaskStatus(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }
}
