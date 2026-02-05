# Tasks Manager

**Language**: [Français](#français) | [English](#english)

---

## Français

# Tasks Manager

Une application de gestion des tâches moderne construite avec Flutter. Cette application permet aux utilisateurs de créer, gérer et organiser leurs tâches quotidiennes avec un calendrier intégré.

## Fonctionnalités

- **Gestion des tâches**: Créer, modifier et supprimer des tâches
- **Calendrier intégré**: Visualiser les tâches par date avec le calendrier interactif
- **Interface intuitive**: Design moderne et ergonomique
- **Gestion d'état**: Utilisation de Provider pour une gestion d'état réactive
- **Support multi-plateforme**: Fonctionne sur Windows, macOS, Linux, iOS et Android

## Prérequis

- Flutter SDK ^3.10.3
- Dart SDK ^3.10.3
- Un IDE (VS Code, Android Studio, etc.)

## Installation

### 1. Cloner le repository
```bash
git clone https://github.com/ITlaDev404/Tasks_Manager.git
cd Tasks_Manager
```

### 2. Installer les dépendances
```bash
flutter pub get
```

### 3. Lancer l'application

#### Sur un appareil/émulateur Android ou iOS:
```bash
flutter run
```

#### Sur Windows:
```bash
flutter run -d windows
```

#### Sur macOS:
```bash
flutter run -d macos
```

#### Sur Linux:
```bash
flutter run -d linux
```

#### Sur le web:
```bash
flutter run -d chrome
```

## Architecture du Projet

Le projet suit une architecture **MVVM** (Model-View-ViewModel) pour une meilleure séparation des responsabilités:

```
lib/
├── main.dart              # Point d'entrée de l'application
├── models/                # Modèles de données
├── views/                 # Interfaces utilisateur (UI)
├── viewmodels/            # Logique métier et gestion d'état
└── services/              # Services et utilitaires
```

### Structure détaillée

- **models/**: Contient les classes de données (Task, etc.)
- **views/**: Contient les écrans et widgets Flutter
- **viewmodels/**: Contient la logique métier et utilise Provider pour la gestion d'état
- **services/**: Contient les services (API, base de données, etc.)

## Dépendances Principales

- **Flutter**: Framework UI
- **provider**: Gestion d'état réactive
- **table_calendar**: Calendrier interactif avec affichage des tâches
- **cupertino_icons**: Icônes iOS
- **window_manager**: Gestion des fenêtres (desktop)

## Utilisation

### Créer une tâche
1. Lancez l'application
2. Naviguez vers l'écran de création
3. Entrez les détails de la tâche
4. Cliquez sur "Ajouter" pour créer la tâche

### Visualiser les tâches par date
- Utilisez le calendrier intégré pour naviguer entre les dates
- Les tâches s'affichent automatiquement pour la date sélectionnée

### Modifier ou supprimer une tâche
- Sélectionnez une tâche
- Appuyez sur "Modifier" ou "Supprimer"

## Développement

### Exécuter les tests
```bash
flutter test
```

### Analyser le code
```bash
flutter analyze
```

### Formater le code
```bash
dart format lib/
```

## Contribution

Les contributions sont les bienvenues! N'hésitez pas à:
1. Forker le projet
2. Créer une branche pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`)
3. Commiter vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Pousser vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## Licence

Ce projet est fourni à titre informatif pour un stage de développement Flutter.

## Auteur

Développé comme projet de stage Flutter.

## Support

Pour toute question ou problème, veuillez ouvrir une issue dans le repository GitHub.

---

## English

# Tasks Manager

A modern task management application built with Flutter. This application allows users to create, manage and organize their daily tasks with an integrated calendar.

## Features

- **Task Management**: Create, edit and delete tasks
- **Integrated Calendar**: View tasks by date with interactive calendar
- **Intuitive Interface**: Modern and ergonomic design
- **State Management**: Using Provider for reactive state management
- **Multi-platform Support**: Works on Windows, macOS, Linux, iOS and Android

## Prerequisites

- Flutter SDK ^3.10.3
- Dart SDK ^3.10.3
- An IDE (VS Code, Android Studio, etc.)

## Installation

### 1. Clone the repository
```bash
git clone <repository-url>
cd Tasks_Manager
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Run the application

#### On Android or iOS device/emulator:
```bash
flutter run
```

#### On Windows:
```bash
flutter run -d windows
```

#### On macOS:
```bash
flutter run -d macos
```

#### On Linux:
```bash
flutter run -d linux
```

#### On web:
```bash
flutter run -d chrome
```

## Project Architecture

The project follows an **MVVM** (Model-View-ViewModel) architecture for better separation of concerns:

```
lib/
├── main.dart              # Application entry point
├── models/                # Data models
├── views/                 # User interfaces (UI)
├── viewmodels/            # Business logic and state management
└── services/              # Services and utilities
```

### Detailed Structure

- **models/**: Contains data classes (Task, etc.)
- **views/**: Contains Flutter screens and widgets
- **viewmodels/**: Contains business logic and uses Provider for state management
- **services/**: Contains services (API, database, etc.)

## Main Dependencies

- **Flutter**: UI framework
- **provider**: Reactive state management
- **table_calendar**: Interactive calendar with task display
- **cupertino_icons**: iOS icons
- **window_manager**: Window management (desktop)

## Usage

### Create a task
1. Launch the application
2. Navigate to the creation screen
3. Enter the task details
4. Click "Add" to create the task

### View tasks by date
- Use the integrated calendar to navigate between dates
- Tasks are automatically displayed for the selected date

### Edit or delete a task
- Select a task
- Press "Edit" or "Delete"

## Development

### Run tests
```bash
flutter test
```

### Analyze code
```bash
flutter analyze
```

### Format code
```bash
dart format lib/
```

## Contributing

Contributions are welcome! Feel free to:
1. Fork the project
2. Create a branch for your feature (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is provided for informational purposes as a Flutter development internship project.

## Author

Developed as a Flutter internship project.

## Support

For any questions or issues, please open an issue in the GitHub repository.

---

**Last Updated**: February 2026
