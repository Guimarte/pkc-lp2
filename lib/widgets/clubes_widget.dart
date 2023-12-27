import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pkc/pages/home/home_controller.dart';

class ClubesWidget extends StatelessWidget {
  ClubesWidget({super.key});
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
            child: Obx(() => Wrap(
                alignment: WrapAlignment.center,
                spacing: 48,
                runSpacing: 16,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: homeController.teams.value))));
  }
}
