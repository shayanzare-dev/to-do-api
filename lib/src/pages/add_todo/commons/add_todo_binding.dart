import 'package:get/get.dart';
import 'package:to_do_api/src/pages/add_todo/controllers/add_todo_controller.dart';

class AddTodoBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => AddTodoController());
}
