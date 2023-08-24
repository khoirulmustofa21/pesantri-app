import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pesantri/colors/colors_app.dart';
import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/controller/persensi_kegiatan_controller.dart';

import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/widget/card_widget.dart';
import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/widget/date_button_widget.dart';
import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/widget/default_dialog_widget.dart';

import '../../../pemberitahuan/view/pemberitahuan.dart';

class PersensiKegiatanPage extends StatelessWidget {
  PersensiKegiatanPage({super.key});

  final PersensiKegiatanController c = PersensiKegiatanController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsApp.mainColor,
        shape: const CircleBorder(),
        onPressed: () {
          Get.defaultDialog(
              backgroundColor: ColorsApp.colorBgWith,
              contentPadding: const EdgeInsets.all(13),
              title: '',
              titlePadding: const EdgeInsets.all(0),
              content: defaultDialogWidget(context));
        },
        child: const Icon(
          Icons.add,
          color: ColorsApp.whiteColor,
        ),
      ),
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 16),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(Pemberitahuan());
                  },
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    color: ColorsApp.mainColor,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 3,
                  child: Container(
                    width: 6.h,
                    height: 6.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 246, 89, 78),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 255, 0, 0),
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3,
                          offset: Offset.zero,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
            ),
            child: dateButtonWIdget(),
          ),
          const SizedBox(
            height: 20,
          ),
          cardWidget(c.data)
        ],
      ),
    );
  }
}
