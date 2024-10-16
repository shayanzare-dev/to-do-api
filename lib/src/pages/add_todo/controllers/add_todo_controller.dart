import 'package:get/get.dart';
import 'package:to_do_api/src/pages/add_todo/models/add_todo_dto.dart';

import '../repository/add_todo_repository.dart';

class AddTodoController extends GetxController {
  final AddTodoRepository _addTodoRepository = AddTodoRepository();

  Future<void> addTodo() async {
    final bool isAddTodoSuccessful = await _addTodoRepository.addTodo(
        todoDto: const AddTodoDto(
            userId: 220, id: 220, title: 'shayan', completed: false));

    if (isAddTodoSuccessful) {
      print('successful');
    }
  }
}
