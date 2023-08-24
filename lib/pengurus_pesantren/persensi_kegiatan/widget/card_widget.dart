import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../colors/colors_app.dart';

Widget cardWidget(data) {
  return Flexible(
    // height: MediaQuery.of(context).size.height - 200,
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView.builder(
          itemCount: data.length,
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
                    SizedBox(
                      height: 32,
                      child: Text(
                        '${data[index]['kagiatan']}',
                        maxLines: 2,
                        softWrap: true,
                        style: const TextStyle(
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
                          color: ColorsApp.greenColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          data[index]['tanggal'],
                          style: const TextStyle(
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
                          color: ColorsApp.greenColor,
                          size: 8,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${data[index]['jam']} WIB",
                          style: const TextStyle(
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
                          color: ColorsApp.greenColor,
                          size: 8,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          data[index]['santri'],
                          style: const TextStyle(
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
                              color: data[index]['status'] == true
                                  ? ColorsApp.mainColor
                                  : const Color(0xffF9D56E)),
                          child: Center(
                            child: Text(
                              data[index]['status'] == true
                                  ? "Selesai"
                                  : "Proses",
                              style: const TextStyle(
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
  );
}
