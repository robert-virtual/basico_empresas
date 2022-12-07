import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basico_empresas/controllers/home_controller.dart';
import 'package:image_picker/image_picker.dart';

class SubirImagen extends GetView<HomeController> {
  const SubirImagen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Almacena Imagenes"),
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          if (controller.image == null) {
            return Center(
              child: ElevatedButton(
                onPressed: () async {
                  final res = await controller.imagePicker
                      .pickImage(source: ImageSource.gallery);
                  controller.setImage(res);
                },
                child: const Text("Seleccionar imagen"),
              ),
            );
          }
          return ListView(
            children: [
              Image.file(
                File.fromUri(
                  Uri.file(controller.image!.path),
                ),
              ),
              ElevatedButton(
                child: const Text("Subir imagen"),
                onPressed: () async {
                  final value = await controller.image!.readAsBytes();

                  final base64 = base64Encode(value);
                  print("base64 length: ${base64.length}");
                  const maxSize = 50000;
                  final cells = (base64.length / maxSize).ceil();
                  List<String> data = List.generate(
                    cells,
                    (idx) {
                      final end = ((idx + 1) * maxSize);
                      return base64.substring(idx * maxSize,
                          end > base64.length ? base64.length : end);
                    },
                  );
                  print("cells: $cells");
                  print(data);
                  await controller.sendSheet(range: "almacen!A:Z", data: data);
                  Get.back();
                },
              )
            ],
          );
        },
      ),
    );
  }
}
