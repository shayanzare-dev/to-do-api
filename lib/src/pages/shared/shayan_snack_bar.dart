import 'package:flutter/material.dart';
import 'package:get/get.dart';

void shayanShowSnackBar({required String value, Color? color}) {
  Get.showSnackbar(
    GetSnackBar(
      title: value,
      backgroundColor: color ?? Colors.red,
    ),
  );
}
