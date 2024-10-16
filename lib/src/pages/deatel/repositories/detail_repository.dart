import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/to_do_view_model.dart';

class DetailRepository {
  Future<ToDoViewModel?> getTodoById(int id) async {
    final Uri url = Uri.https('jsonplaceholder.typicode.com', '/todos/$id');
    final http.Response response = await http.get(url);
    try {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final ToDoViewModel todo = ToDoViewModel.fromJson(json: jsonData);
      return todo;
    } catch (e) {
      print('Error');
    }
    return null;
  }
/*
  Future<Map<String, int>> getTodos() async {
    final Uri url = Uri.https('jsonplaceholder.typicode.com', '/todos/');
    try {
      final http.Response response = await http.get(url);
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
  }*/
}
