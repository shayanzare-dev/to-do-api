import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infrastructure/route/route_pages.dart';
import 'infrastructure/route/route_paths.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        initialRoute: RoutePaths.todos,
        getPages: RoutePages.pages,
      );
}
