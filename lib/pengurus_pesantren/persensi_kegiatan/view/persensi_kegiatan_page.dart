import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pesantri/colors/colors_app.dart';

import '../../../pemberitahuan/view/pemberitahuan.dart';

class PersensiKegiatanPage extends StatelessWidget {
  const PersensiKegiatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsApp.mainColor,
        onPressed: () {},
        child: const Icon(Icons.add),
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
                    width: 6,
                    height: 6,
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
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorsApp.whiteColor,
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          offset: Offset(2, 2),
                          color: Color.fromARGB(255, 166, 163, 163),
                          blurRadius: 4,
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Tanggal awal",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.date_range,
                            size: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorsApp.whiteColor,
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          offset: Offset(2, 2),
                          color: Color.fromARGB(255, 166, 163, 163),
                          blurRadius: 4,
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Tanggal awal",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.date_range,
                            size: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            // height: MediaQuery.of(context).size.height - 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 92.h,
                        width: 321.w,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: ColorsApp.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 32,
                              child: Text(
                                "Haul Akbar Pondok Pesantren Al Iman ke - 100",
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                  color: ColorsApp.greenColor,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.date_range,
                                  size: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Jumat, 4 september 2020",
                                  style: TextStyle(
                                    color: ColorsApp.greenColor,
                                    fontFamily: 'Roboto',
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.timelapse_rounded,
                                  size: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "07.00 WIB",
                                  style: TextStyle(
                                    color: ColorsApp.greenColor,
                                    fontFamily: 'Roboto',
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.people_outline,
                                  size: 8,
                                ),
                                const Text(
                                  "Semua",
                                  style: TextStyle(
                                    color: ColorsApp.greenColor,
                                    fontFamily: 'Roboto',
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  width: 45,
                                  height: 12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xffF9D56E)),
                                  child: const Center(
                                    child: Text(
                                      "Selesai",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: ColorsApp.whiteColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
