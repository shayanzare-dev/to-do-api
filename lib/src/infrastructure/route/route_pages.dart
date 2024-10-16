import 'package:get/get.dart';

import '../../pages/deatel/commons/detail_binding.dart';
import '../../pages/deatel/views/detail_screen.dart';
import '../../pages/todo_list/commons/to_do_list_binding.dart';
import '../../pages/todo_list/views/to_do_screen.dart';
import 'route_paths.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
        name: RoutePaths.todos,
        page: () => const ToDoScreen(),
        binding: ToDoBinding(),
        children: [
          GetPage(
            name: RoutePaths.details,
            page: () => const DetailScreen(),
            binding: DetailBinding(),
          )
        ]),
  ];
}
