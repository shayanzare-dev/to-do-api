class AddTodoDto {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const AddTodoDto({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'completed': completed,
      };

  @override
  String toString() {
    return 'id : $id , userId : $userId , title : $title , completed : $completed';
  }
}
