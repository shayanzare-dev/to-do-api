import 'package:get/get.dart';
import 'package:to_do_api/src/pages/todo_list/controllers/to_do_list_controller.dart';

class ToDoBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => ToDoListController());
}
