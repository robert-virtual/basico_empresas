import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basico_empresas/controllers/home_controller.dart';

class ImagesPage extends GetView<HomeController> {
  const ImagesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Almacena Imagenes"),
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
          return FutureBuilder(
            future:
                controller.getSheet(range: "almacen!A:Z", removeFirst: false),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snap.hasError) {
                return Center(child: Text("Error: ${snap.error}"));
              }
              final data = snap.data ?? List.empty();
              if (data.isEmpty) {
                return const Center(child: Text("No hay datos que mostar"));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: data.length,
                itemBuilder: (context, idx) {
                  String base64 = data[idx].join();
                  final bytes = base64Decode(base64);
                  return Image.memory(bytes);
                  /* return const Text("imagen"); */
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Get.toNamed("/subir_imagen");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
