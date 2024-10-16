class ToDoViewModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const ToDoViewModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory ToDoViewModel.fromJson({required Map<String, dynamic> json}) =>
      ToDoViewModel(
          userId: json['userId'],
          id: json['id'],
          title: json['title'],
          completed: json['completed']);

  @override
  String toString() {
    return 'id : $id , userId : $userId , title : $title , completed : $completed';
  }
}
