import 'package:flutter/material.dart';
import 'package:pesantri/colors/colors_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.colorBgWith,
      appBar: AppBar(
        backgroundColor: ColorsApp.colorBgWith,
        shadowColor: ColorsApp.colorBgWith,
        leading: Image.asset('assets/images/avatar.png'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
