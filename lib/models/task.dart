class Task {
  final String taskId;
  final String taskName;
  final String dateOfUpload;
  final String timeOfUpload;
  final int uploadMilliSecond;

  Task(
      {required this.taskId,
      required this.taskName,
      required this.dateOfUpload,
      required this.timeOfUpload,
      required this.uploadMilliSecond});
}
