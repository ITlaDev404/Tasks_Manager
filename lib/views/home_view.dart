import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../viewmodels/task_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final taskViewModel = Provider.of<TaskViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Gestionnaire de tâches")),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: taskViewModel.selectedDay,
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            selectedDayPredicate: (day) => isSameDay(day, taskViewModel.selectedDay),
            onDaySelected: (selectedDay, focusedDay) {
              taskViewModel.setSelectedDay(selectedDay);
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: taskViewModel.tasks.length,
              itemBuilder: (context, index) {
                final task = taskViewModel.tasks[index];
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
                      taskViewModel.toggleTaskStatus(task);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              TextEditingController controller = TextEditingController();
              return AlertDialog(
                title: const Text("Nouvelle tâche"),
                content: TextField(
                  controller: controller,
                  decoration: const InputDecoration(hintText: "Nom de la tâche"),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      if (controller.text.isNotEmpty) {
                        taskViewModel.addTask(controller.text);
                      }
                      Navigator.pop(context);
                    },
                    child: const Text("Ajouter"),
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
