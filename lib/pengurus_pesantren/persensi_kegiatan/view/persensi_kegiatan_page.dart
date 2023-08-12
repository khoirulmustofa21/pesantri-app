import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pesantri/colors/colors_app.dart';

class PersensiKegiatanPage extends StatelessWidget {
  const PersensiKegiatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.colorBgWith,
        foregroundColor: ColorsApp.mainColor,
        forceMaterialTransparency: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Text(
          "Persensi Kegiatan",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_none_outlined,
              color: ColorsApp.mainColor,
            ),
          )
        ],
      ),
    );
  }
}
