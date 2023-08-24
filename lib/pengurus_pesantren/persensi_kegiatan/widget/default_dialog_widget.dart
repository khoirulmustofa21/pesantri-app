import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/controller/persensi_kegiatan_controller.dart';

import '../../../colors/colors_app.dart';
import 'content_dialog_input_tanggal_jam_widget.dart';
import 'content_dialog_input_ustadz_santri.dart';

Widget defaultDialogWidget(context) {
  PersensiKegiatanController c = PersensiKegiatanController();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Nama kegiatan",
        style: TextStyle(
            color: ColorsApp.darkColor,
            fontSize: 11,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 5,
      ),
      Container(
        height: 25.h,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Obx(
          () {
            return DropdownButton(
                icon: const Icon(Icons.arrow_drop_down),
                isExpanded: true,
                underline: const SizedBox(),
                hint: Text(
                  c.selctetdValue.value.isEmpty
                      ? 'Nama Kegiatan'
                      : c.selctetdValue.value,
                  style: TextStyle(
                    fontSize: 11,
                    color: c.selctetdValue.value.isEmpty
                        ? ColorsApp.whiteTransparent
                        : ColorsApp.darkColor,
                  ),
                  maxLines: 1,
                ),
                items: c.dataNamaKegiatan
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        onTap: () {
                          c.changeData(e);
                        },
                        child: Text(
                          e,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              color: ColorsApp.darkColor),
                        ),
                      ),
                    )
                    .toList(),
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                onChanged: (value) {});
          },
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      contentDialgoInputUstadzSantri(c),
      SizedBox(
        height: 10.h,
      ),
      contentDialogInputTanggalJamWidge(c, context),
      SizedBox(
        height: 10.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsApp.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              minimumSize: const Size(68, 20),
            ),
            onPressed: () {
              Get.back();
            },
            child: Text(
              'Batal',
              style: TextStyle(
                fontSize: 10.sp,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: ColorsApp.whiteColor,
              ),
            ),
          ),
          SizedBox(
            width: 20.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsApp.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              minimumSize: const Size(68, 20),
            ),
            onPressed: () {},
            child: const Text(
              'Tambah',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: ColorsApp.whiteColor,
              ),
            ),
          ),
        ],
      )
    ],
  );
}
