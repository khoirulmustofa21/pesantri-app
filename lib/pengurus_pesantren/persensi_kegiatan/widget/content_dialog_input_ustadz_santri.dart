import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/controller/persensi_kegiatan_controller.dart';

import '../../../colors/colors_app.dart';

Widget contentDialgoInputUstadzSantri(PersensiKegiatanController c) {
  return Row(
    children: [
      SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nama Ustadz",
              style: TextStyle(
                color: ColorsApp.darkColor,
                fontSize: 11,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 25.h,
              width: 175.w,
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
                        c.selctetdUstadz.value.isEmpty
                            ? 'Nama ustadz'
                            : c.selctetdUstadz.value,
                        style: TextStyle(
                          fontSize: 11,
                          color: c.selctetdUstadz.value.isEmpty
                              ? ColorsApp.whiteTransparent
                              : ColorsApp.darkColor,
                        ),
                        maxLines: 1,
                      ),
                      items: c.dataNamaUstadz
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              onTap: () {
                                c.setUstadz(e);
                              },
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 12),
                      onChanged: (value) {});
                },
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 10.w,
      ),
      SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Santri",
              style: TextStyle(
                  color: ColorsApp.darkColor,
                  fontSize: 11,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 25.h,
              width: 101.w,
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
                        c.selctetdKategoriSantri.value.isEmpty
                            ? 'Santri'
                            : c.selctetdKategoriSantri.value,
                        style: TextStyle(
                          fontSize: 11,
                          color: c.selctetdKategoriSantri.value.isEmpty
                              ? ColorsApp.whiteTransparent
                              : ColorsApp.darkColor,
                        ),
                        maxLines: 1,
                      ),
                      items: c.dataKategoriSantri
                          .map(
                            (santri) => DropdownMenuItem(
                              value: santri,
                              onTap: () {
                                c.setKategoriSantri(santri);
                              },
                              child: Text(santri),
                            ),
                          )
                          .toList(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 12),
                      onChanged: (value) {});
                },
              ),
            ),
          ],
        ),
      )
    ],
  );
}
