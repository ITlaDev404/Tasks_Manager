import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _selectedDay = DateTime.now();
  List<Task> tasks = [];

  void _addTask(String title) {
    setState(() {
      tasks.add(Task(title: title, date: _selectedDay));
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedTasks =
        tasks.where((task) => isSameDay(task.date, _selectedDay)).toList();

    return Scaffold(
      appBar: AppBar(title: Text("Gestionnaire de tâches")),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: _selectedDay,
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedTasks.length,
              itemBuilder: (context, index) {
                final task = selectedTasks[index];
                return ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                      decoration:
                          task.isDone ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  trailing: Checkbox(
                    value: task.isDone,
                    onChanged: (value) {
                      setState(() {
                        task.isDone = value!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              TextEditingController controller = TextEditingController();
              return AlertDialog(
                title: Text("Nouvelle tâche"),
                content: TextField(
                  controller: controller,
                  decoration: InputDecoration(hintText: "Nom de la tâche"),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      _addTask(controller.text);
                      Navigator.pop(context);
                    },
                    child: Text("Ajouter"),
                  )
                ],  
              );
            },
          );
        },
      ),
    );
  }
}
