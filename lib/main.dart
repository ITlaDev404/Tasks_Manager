import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/task_viewmodel.dart';
import 'viewmodels/theme_viewmodel.dart';
import 'views/home_view.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TaskViewModel()),
        ChangeNotifierProvider(create: (context) => ThemeViewModel()),
      ],
      child: Consumer<ThemeViewModel>(
        builder: (context, themeViewModel, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeViewModel.getLightTheme(),
            darkTheme: themeViewModel.getDarkTheme(),
            themeMode: themeViewModel.isDarkMode
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
