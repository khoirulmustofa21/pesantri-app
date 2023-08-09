import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pesantri/colors/colors_app.dart';
import 'package:pesantri/pengurus_pesantren/home/home_page.dart';
import 'package:pesantri/pengurus_pesantren/login/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });

  final LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 196,
              child: Image.asset('assets/images/pesantri.png'),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              height: 45,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorsApp.whiteColor,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromARGB(75, 0, 0, 0),
                    offset: Offset(1, 1),
                    blurRadius: 10,
                    blurStyle: BlurStyle.normal,
                  ),
                ],
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    color: Color(0xffC7C7C7),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Color.fromARGB(75, 0, 0, 0),
                      offset: Offset(1, 1),
                      blurRadius: 10,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        obscureText: controller.obscurePass.value,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            color: Color(0xffC7C7C7),
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.changeObscure();
                      },
                      child: Icon(
                        controller.obscurePass.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 20,
                        color: const Color(0xffCECECE),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 245,
              child: InkWell(
                child: Text(
                  "Lupa password anda?",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), // Ubah nilai sesuai kebutuhan
                    ),
                  ),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(250, 45)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(ColorsApp.mainColor)),
              onPressed: () {
                Get.to(HomePage());
              },
              child: const Text("Masuk"),
            ),
          ],
        ),
      ),
    );
  }
}
