import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pesantri/pengurus_pesantren/persensi_kegiatan/controller/persensi_kegiatan_controller.dart';

import '../../../colors/colors_app.dart';

Widget contentDialogInputTanggalJamWidge(
    PersensiKegiatanController c, context) {
  TextEditingController dateInputController = TextEditingController();
  TextEditingController timeInputController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay selectedTime = TimeOfDay.now();

    selectedTime = await showTimePicker(
          context: context,
          initialTime: selectedTime,
        ) ??
        selectedTime;

    String formattedTime = selectedTime.format(context);
    timeInputController.text = formattedTime;
  }

  return Row(
    children: [
      SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tanggal",
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
              width: 175.w,
              padding: const EdgeInsets.only(left: 10, right: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: TextField(
                controller: dateInputController,
                style: const TextStyle(
                  color: ColorsApp.darkColor,
                  fontSize: 11,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tanggal',
                  hintStyle: TextStyle(
                    color: ColorsApp.whiteTransparent,
                    fontSize: 11,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                  suffixIcon: Icon(
                    Icons.date_range_outlined,
                    size: 11,
                  ),
                  suffixIconColor: ColorsApp.darkColor,
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2050));

                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    dateInputController.text = formattedDate;
                  }
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
              "Jam",
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
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Align(
                alignment: Alignment.center,
                child: TextField(
                  style: const TextStyle(
                    color: ColorsApp.darkColor,
                    fontSize: 11,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                  controller: timeInputController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Jam',
                    hintStyle: TextStyle(
                      color: ColorsApp.whiteTransparent,
                      fontSize: 11,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: () {
                    _selectTime(context);
                  },
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
