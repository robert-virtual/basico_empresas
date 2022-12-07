import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:basico_empresas/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basico Empresas"),
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          if (controller.account == null) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  controller.signIn();
                },
                child: const Text("Iniciar Session"),
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () =>
                Future.sync(() => controller.pagingController.refresh()),
            child: PagedListView<int, List>(
              pagingController: controller.pagingController,
              builderDelegate: PagedChildBuilderDelegate(
                itemBuilder: (context, item, idx) {
                  String base64 = item.join();
                  final bytes = base64Decode(base64);
                  return Image.memory(bytes);
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
            label: const Text("Spreadsheets"),
            onPressed: () {
              Get.toNamed("/drivefiles");
            },
            icon: const Icon(Icons.list),
          ),
    );
  }
}
