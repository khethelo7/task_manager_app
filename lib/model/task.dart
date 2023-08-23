
class Task {
  String task;
  DateTime date;

  Task ({
    required this.task, required this.date
  });

  factory Task.fromString(String task) {
    return Task(
      task: task,
      date: DateTime.now(), 
    );
  }
}