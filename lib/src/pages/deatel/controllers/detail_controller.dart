import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/to_do_view_model.dart';
import '../repositories/detail_repository.dart';

class DetailController extends GetxController {
  final int? id;
  GlobalKey<FormState> sd = GlobalKey();

  DetailController(this.id);

  Rxn<ToDoViewModel> todo = Rxn();
  final DetailRepository _repository = DetailRepository();

  Future<void> getData() async {
    final ToDoViewModel? resultOrException = await _repository.getTodoById(id!);
    if (resultOrException != null) {
      todo.value = resultOrException;
    } else {

    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
