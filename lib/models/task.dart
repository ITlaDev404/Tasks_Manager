class Task {
  String title;
  DateTime date;
  bool isDone;

  Task({required this.title, required this.date, this.isDone = false});

  String getTitle() {
    return title;
  }
  DateTime getDate(){
    return date;
  }
  bool getIsDone(){
    return isDone;
  }
}
