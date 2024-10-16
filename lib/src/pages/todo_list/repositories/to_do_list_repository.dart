import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:to_do_api/src/pages/todo_list/models/to_do_view_model.dart';

import '../../../infrastructure/commons/repository_urls.dart';

class ToDoListRepository {
  Future<List<ToDoViewModel>?> getTodos() async {
    try {
      final http.Response response = await http.get(RepositoryUrls.getTodos);
      final List<dynamic> jsonData = json.decode(response.body);
      return castData(jsonData);
    } on SocketException {
      print('اتصال به اینترنت برقرار نیست.');
    } on HttpException {
      print('خطا در ارسال درخواست به سرور.');
    } on FormatException {
      print('پاسخ نامعتبر از سرور دریافت شد.');
    } catch (e) {
      print('$e');
    }
    return null;
  }

  List<ToDoViewModel> castData(List<dynamic> jsonData) {
    return jsonData.map((todo) => ToDoViewModel.fromJson(json: todo)).toList();
  }
}
