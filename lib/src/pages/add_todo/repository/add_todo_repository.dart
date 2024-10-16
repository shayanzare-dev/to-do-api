import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:to_do_api/src/infrastructure/commons/repository_urls.dart';

import '../models/add_todo_dto.dart';

class AddTodoRepository {
  Future<bool> addTodo({required AddTodoDto todoDto}) async {
    try {
      final body = json.encode(todoDto.toJson());
      final http.Response response = await http.post(
        RepositoryUrls.addTodo,
        body: body,
        headers: {'Content-Type': 'application/json'},
      );
      print(response.body);
      return true;
    } catch (e) {
      print('add todo exception => $e');
      return false;
    }
  }
}
