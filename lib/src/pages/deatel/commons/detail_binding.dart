import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    final String value = Get.parameters['id']!;
    final int? id = int.tryParse(value);
    Get.lazyPut(() => DetailController(id));
  }
}

