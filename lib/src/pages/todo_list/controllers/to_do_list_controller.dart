import 'package:get/get.dart';
import 'package:to_do_api/src/pages/todo_list/models/to_do_view_model.dart';
import 'package:to_do_api/src/pages/todo_list/repositories/to_do_list_repository.dart';

import '../../../infrastructure/route/route_names.dart';

class ToDoListController extends GetxController {
  RxList<ToDoViewModel> todos = RxList();
  RxBool isRetryMode = false.obs, isLoadingMode = true.obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  final ToDoListRepository _repository = ToDoListRepository();

  Future<void> getData() async {
    isLoadingMode.value = true;
    isRetryMode.value = false;
    // await Future.delayed(const Duration(milliseconds: 200));
    final List<ToDoViewModel>? resultOrException = await _repository.getTodos();
    if (resultOrException != null) {
      isLoadingMode.value = false;
      isRetryMode.value = false;
      todos.addAll(resultOrException);
    } else {
      isLoadingMode.value = false;
      isRetryMode.value = true;
    }
  }

  void goToNextPage({required int id}) =>
      Get.toNamed(RouteNames.details, parameters: {'id': '$id'});
}
