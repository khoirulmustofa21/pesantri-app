import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../colors/colors_app.dart';

// ignore: must_be_immutable
class Pemberitahuan extends StatelessWidget {
  Pemberitahuan({super.key});
  List<Map<String, dynamic>> data = [
    {
      'title':
          'Presensi kegiatan “Haul Akbar Pondok Pesantren Al Iman ke - 100” telah dibuat',
      'read': true,
      'time': '1 Jam yang lalu'
    },
    {
      'title':
          'Presensi kegiatan “Haul Akbar Pondok Pesantren Al Iman ke - 100” telah dibuat',
      'read': false,
      'time': 'Kemarin'
    },
    {
      'title':
          'Presensi kegiatan “Haul Akbar Pondok Pesantren Al Iman ke - 100” telah dibuat',
      'read': true,
      'time': '15 September 2020'
    }
  ];
  List<Map<String, dynamic>> readData() {
    return data.where((item) => item['read'] == true).toList();
  }

  List<Map<String, dynamic>> notReadData() {
    return data.where((item) => item['read'] == false).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> readdata = readData();
    List<Map<String, dynamic>> notreaddata = notReadData();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsApp.colorBgWith,
          foregroundColor: ColorsApp.mainColor,
          forceMaterialTransparency: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
          ),
          title: const Text(
            "Pemberitahuan",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: data.isNotEmpty
            ? SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      notreaddata.isNotEmpty
                          ? const Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                'Belum dilihat',
                                style: TextStyle(
                                    color: ColorsApp.greenColor,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : const SizedBox(),
                      notreaddata.isNotEmpty
                          ? SizedBox(
                              child: Column(
                                children: List.generate(
                                  notreaddata.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      width: 320.w,
                                      height: 58.h,
                                      margin: const EdgeInsets.all(5),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: ColorsApp.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              'assets/icons/persensiKegiatan.png'),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 235.w,
                                                child: const Text(
                                                  softWrap: true,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  "Presensi kegiatan “Haul Akbar Pondok Pesantren Al Iman ke - 100” telah dibuat",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 1,
                                              ),
                                              const Text(
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                "1 Jam yang lalu",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                      readdata.isNotEmpty
                          ? const Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 5),
                              child: Text(
                                'Sudah dilihat',
                                style: TextStyle(
                                    color: ColorsApp.greenColor,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : const SizedBox(),
                      readdata.isNotEmpty
                          ? SizedBox(
                              child: Column(
                                children: List.generate(
                                  readdata.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                        width: 320.w,
                                        height: 58.h,
                                        margin: const EdgeInsets.all(5),
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: ColorsApp.whiteColor,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/icons/persensiKegiatan.png'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 235.w,
                                                  child: const Text(
                                                    softWrap: true,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    "Presensi kegiatan “Haul Akbar Pondok Pesantren Al Iman ke - 100” telah dibuat",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 1,
                                                ),
                                                const Text(
                                                  softWrap: true,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  "1 Jam yang lalu",
                                                  style: TextStyle(
                                                      fontSize: 8,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              )
            : const Center(
                child: SizedBox(
                  height: 244,
                  width: 261,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 212,
                        color: Color(0xffC4C4C4),
                      ),
                      Text(
                        "Mohon maaf belum ada pemberitahuan ",
                        style: TextStyle(color: Color(0xffC4C4C4)),
                      ),
                      Text(
                        "terbaru saat ini",
                        style: TextStyle(color: Color(0xffC4C4C4)),
                      )
                    ],
                  ),
                ),
              ));
  }
}
