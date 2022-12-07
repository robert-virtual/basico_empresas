import 'package:basico_empresas/pages/images.dart';
import 'package:basico_empresas/pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:basico_empresas/pages/drive_files.dart';
import 'package:basico_empresas/pages/home_page.dart';
import 'package:basico_empresas/pages/subir_imagen.dart';
import 'package:get/get.dart';
import 'package:basico_empresas/controllers/home_controller.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() {
  timeago.setLocaleMessages("es", timeago.EsMessages());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/menu",
      getPages: [
        GetPage(
          name: "/menu",
          page: () => const MenuPage(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: "/home",
          page: () => const HomePage(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: "/images",
          page: () => const ImagesPage(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: "/drivefiles",
          page: () => DriveFiles(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: "/subir_imagen",
          page: () => const SubirImagen(),
          binding: HomeBinding(),
        ),
      ],
    ),
  );
}
