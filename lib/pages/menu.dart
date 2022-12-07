import 'package:basico_empresas/pages/compras.dart';
import 'package:basico_empresas/pages/drive_files.dart';
import 'package:basico_empresas/pages/productos.dart';
import 'package:basico_empresas/pages/ventas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basico_empresas/controllers/home_controller.dart';

class MenuPage extends GetView<HomeController> {
  const MenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (_) => controller.account != null
            ? IndexedStack(
                index: controller.currentPage,
                children: [
                  const VentasPage(),
                  const ComprasPage(),
                  const ProductosPage(),
                  DriveFiles()
                ],
              )
            : Center(
                child: ElevatedButton(
                  onPressed: controller.signIn,
                  child: const Text("Iniciar Session"),
                ),
              ),
      ),
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (_) => BottomNavigationBar(
          currentIndex: controller.currentPage,
          onTap: controller.setCurrentPage,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sell),
              label: "Ventas",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: "Compras",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory),
              label: "Productos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Ajustes",
            )
          ],
        ),
      ),
    );
  }
}
