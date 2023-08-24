import 'package:flutter/material.dart';

import '../../../colors/colors_app.dart';

Widget dateButtonWIdget() {
  return Row(
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
                    fontWeight: FontWeight.w600,
                    color: ColorsApp.greenColor,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.date_range,
                  size: 10,
                  color: ColorsApp.greenColor,
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
                  "Tanggal akhir",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: ColorsApp.greenColor,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.date_range,
                  size: 10,
                  color: ColorsApp.greenColor,
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
