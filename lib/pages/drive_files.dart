import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basico_empresas/controllers/home_controller.dart';

class DriveFiles extends GetView<HomeController> {
  DriveFiles({super.key});
  var sheetName = "".obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fuentes de datos"),
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
            future: controller.getDriveFiles(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snap.hasError) {
                return Center(child: Text("Error: ${snap.error}"));
              }
              final data = snap.data ?? List.empty();
              if (data.isEmpty) {
                return const Center(child: Text("No hay datos que mostrar"));
              }
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, idx) {
                  return Card(
                    margin: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(data[idx].name ?? "Empty name"),
                            subtitle: Text(data[idx].mimeType ?? "no mimeType"),
                          ),
                          Text(data[idx].id ?? "sin id")
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text(
                "Crear fuente de datos",
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Cancelar"),
                ),
                TextButton(
                    onPressed: () {
                      controller.createBaseSheet(sheetName.value);
                      Navigator.of(context).pop();
                    },
                    child: const Text("Crear"))
              ],
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    onChanged: (value) => sheetName.value = value,
                    decoration: const InputDecoration(
                      label: Text("Nombre"),
                    ),
                  ),
                  Obx(
                    () => Text(
                      "se creara un archivo de google sheets con el el siguiente nombre: basico_empresas_${sheetName.value}",
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
