import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/view/persensi_kegiatan_page.dart';

import '../../../colors/colors_app.dart';
import '../widget/card_detail_widget.dart';

class PersensiKegiatanDetail extends StatelessWidget {
  PersensiKegiatanDetail({
    super.key,
    required namaKegiatan,
    required namaUstadz,
    required kategoriSantri,
    required tanggal,
    required jam,
  });
  late String namaKegiatan;
  late String namaUstadz;
  late String santri;
  late String tanggal;
  late String jam;

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
      ),
      body: SizedBox(
        child: Column(
          children: [
            // cardDetailWidget(data),
          ],
        ),
      ),
    );
  }
}
