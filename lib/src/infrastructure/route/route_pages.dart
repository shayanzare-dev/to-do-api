import 'package:get/get.dart';
import 'package:to_do_api/src/pages/deatel/commons/detail_binding.dart';
import 'package:to_do_api/src/pages/deatel/views/detail_screen.dart';
import 'package:to_do_api/src/pages/todo_list/commons/to_do_list_binding.dart';
import 'package:to_do_api/src/pages/todo_list/views/to_do_screen.dart';

import 'route_names.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
        name: RouteNames.todos,
        page: () => const ToDoScreen(),
        binding: ToDoBinding(),
        children: [
          GetPage(
            name: RouteNames.details,
            page: () => const DetailScreen(),
            binding: DetailBinding(),
          )
        ]),
  ];
}
