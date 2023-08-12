import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pesantri/colors/colors_app.dart';
import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/view/persensi_kegiatan_page.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<ChartData> chartData = [
    ChartData('Category 1', 750), // Santri Putri
    ChartData('Category 2', 750), // Santri Putra
  ];
  int getTotalY() {
    int total = 0;

    for (var data in chartData) {
      if (data.x == 'Category 1' || data.x == 'Category 2') {
        total += data.y.toInt();
      }
    }
    return total;
  }

  Widget popupExitConfirm() {
    return Container(
      height: 80,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorsApp.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Apakah anda yakin akan keluar dari aplikasi"),
          const Text("PESANTRI?"),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Batal"),
              ),
              ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: const Text("Keluar"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> menuItems = [
    {'title': 'List Santri', 'icon': 'assets/icons/listSantri.png'},
    {'title': 'Persensi Kegiatan', 'icon': 'assets/icons/persensiKegiatan.png'},
    {'title': 'Persensi Sekolah', 'icon': 'assets/icons/persensiSekolah.png'},
    {'title': 'Pembayaran', 'icon': 'assets/icons/pembayaran.png'},
    {'title': 'Pelanggaran', 'icon': 'assets/icons/pelanggaran.png'},
    {'title': 'Broadcast', 'icon': 'assets/icons/broadcast.png'},
    {'title': 'Perizinan', 'icon': 'assets/icons/perizinan.png'},
    {'title': 'Prestasi', 'icon': 'assets/icons/prestasi.png'},
    {'title': 'Laporan', 'icon': 'assets/icons/laporan.png'},
    {'title': 'Inventaris', 'icon': 'assets/icons/inventaris.png'},
    {'title': 'List Alumni', 'icon': 'assets/icons/listAlumni.png'},
    {'title': 'Ustadz', 'icon': 'assets/icons/ustadz.png'},
    {'title': 'Ambil Uang', 'icon': 'assets/icons/ambilUang.png'},
    {'title': 'Ambil Makan', 'icon': 'assets/icons/ambilMakan.png'},
    {'title': 'Tahfidz', 'icon': 'assets/icons/tahfidz.png'},
    {'title': 'Kesehatan', 'icon': 'assets/icons/kesehatan.png'},
    {'title': 'Keluar', 'icon': 'assets/icons/logout.png'},
  ];

  @override
  Widget build(BuildContext context) {
    int totalY = getTotalY();
    return Scaffold(
      backgroundColor: ColorsApp.colorBgWith,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: ColorsApp.colorBgWith,
        shadowColor: ColorsApp.colorBgWith,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/images/avatar.png',
            height: 28,
            width: 28,
          ),
        ),
        title: Image.asset(
          'assets/images/pesantri.png',
          width: 113,
        ),
        centerTitle: true,
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
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 10, bottom: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Assalamu'alaikum",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Ustadz Abi",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 350,
              child: GridView.count(
                crossAxisCount: 4,
                children: List.generate(
                  menuItems.length,
                  (index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            if (index == 1) {
                              Get.to(const PersensiKegiatanPage());
                            } else if (index == 16) {
                              Get.defaultDialog(
                                  titlePadding: const EdgeInsets.all(0),
                                  title: '',
                                  // content: popupExitConfirm(),
                                  content: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 30),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Apakah anda yakin akan keluar dari aplikasi",
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "PESANTRI?",
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  confirm: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorsApp.mainColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        minimumSize: const Size(68, 20),
                                      ),
                                      onPressed: () {
                                        exit(0);
                                      },
                                      child: const Text('Keluar')),
                                  cancel: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorsApp.buttonColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        minimumSize: const Size(68, 20),
                                      ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: const Text('Batal')));
                            }
                          },
                          child: Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorsApp.whiteColor,
                            ),
                            child: Image(
                                height: 30,
                                width: 30,
                                image: AssetImage(menuItems[index]['icon'])),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        SizedBox(
                          width: 59,
                          child: Text(
                            "${menuItems[index]['title']}",
                            style: const TextStyle(
                              fontSize: 11,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 205,
                    width: 145,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsApp.whiteColor),
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Positioned(
                            top: 15,
                            left: 15,
                            child: SizedBox(
                              width: 50,
                              child: Text(
                                "Jumlah Santri",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsApp.greenColor),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 15,
                            right: 15,
                            child: Image(
                              width: 20,
                              height: 15,
                              image: AssetImage('assets/icons/listSantri.png'),
                            ),
                          ),
                          SfCircularChart(
                            series: <CircularSeries>[
                              DoughnutSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y,
                                  pointColorMapper: (ChartData data, _) {
                                    if (data.x == 'Category 2') {
                                      return const Color(0xffF9D56E);
                                    } else if (data.x == 'Category 1') {
                                      return const Color(0xffEB744E);
                                    } else {
                                      return Colors.grey;
                                    }
                                  },
                                  innerRadius: '80%',
                                  startAngle: 495,
                                  endAngle: 495),
                            ],
                          ),
                          Positioned(
                            child: Text(
                              '$totalY',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 45,
                            right: 15,
                            child: SizedBox(
                                height: 40,
                                child: Column(
                                  children: [
                                    Text(
                                      "750",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: ColorsApp.greenColor),
                                    ),
                                    Text(
                                      "Putra",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                          color: ColorsApp.greenColor),
                                    ),
                                  ],
                                )),
                          ),
                          const Positioned(
                            bottom: 29,
                            left: 15,
                            child: SizedBox(
                                height: 40,
                                child: Column(
                                  children: [
                                    Text(
                                      "750",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: ColorsApp.greenColor),
                                    ),
                                    Text(
                                      "Purtri",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                          color: ColorsApp.greenColor),
                                    ),
                                  ],
                                )),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 15,
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  color: const Color(0xffF9D56E),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Santri Putra",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: ColorsApp.greenColor),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  color: const Color(0xffEB744E),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Santri Putri",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: ColorsApp.greenColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 205,
                    width: 145,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsApp.whiteColor),
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Positioned(
                            top: 15,
                            left: 15,
                            child: SizedBox(
                              width: 50,
                              child: Text(
                                "Jumlah Alumni",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsApp.greenColor),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 15,
                            right: 15,
                            child: Image(
                              width: 20,
                              height: 15,
                              image: AssetImage('assets/icons/listSantri.png'),
                            ),
                          ),
                          SfCircularChart(
                            series: <CircularSeries>[
                              DoughnutSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y,
                                  pointColorMapper: (ChartData data, _) {
                                    if (data.x == 'Category 2') {
                                      return const Color(0xffF9D56E);
                                    } else if (data.x == 'Category 1') {
                                      return const Color(0xffEB744E);
                                    } else {
                                      return Colors.grey;
                                    }
                                  },
                                  innerRadius: '80%',
                                  startAngle: 495,
                                  endAngle: 495),
                            ],
                          ),
                          Positioned(
                            child: Text(
                              '$totalY',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 45,
                            right: 15,
                            child: SizedBox(
                                height: 40,
                                child: Column(
                                  children: [
                                    Text(
                                      "750",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: ColorsApp.greenColor),
                                    ),
                                    Text(
                                      "Putra",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                          color: ColorsApp.greenColor),
                                    ),
                                  ],
                                )),
                          ),
                          const Positioned(
                            bottom: 29,
                            left: 15,
                            child: SizedBox(
                                height: 40,
                                child: Column(
                                  children: [
                                    Text(
                                      "750",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: ColorsApp.greenColor),
                                    ),
                                    Text(
                                      "Purtri",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                          color: ColorsApp.greenColor),
                                    ),
                                  ],
                                )),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 15,
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  color: const Color(0xffF9D56E),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Alumni Putra",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: ColorsApp.greenColor),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  color: const Color(0xffEB744E),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Alumni Putri",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: ColorsApp.greenColor),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}

class ChartData {
  final String x;
  final double y;

  ChartData(this.x, this.y);
}
