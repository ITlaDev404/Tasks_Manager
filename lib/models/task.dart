class Task {
  String title;
  DateTime date;
  bool isDone;

  Task({required this.title, required this.date, this.isDone = false});

  String getTitle() {
    return this.title;
  }
  DateTime getDate(){
    return this.date;
  }
  bool getIsDone(){
    return this.isDone;
  }
}
