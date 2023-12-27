import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pkc/pages/home/home_controller.dart';
import 'package:pkc/widgets/clubes_widget.dart';
import 'package:pkc/widgets/drop_down_widget.dart';
import 'package:pkc/widgets/step_header_widget.dart';

class Passo1Widget extends StatelessWidget {
  Passo1Widget({super.key});
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1,
      color: const Color(0xffF7F1F7),
      key: homeController.key1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1º PASSO",
                  style: GoogleFonts.robotoCondensed(
                      color: const Color(0xff5A2684),
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xff5A2684),
                      fontSize: 16),
                ),
                Text(
                  ': ONDE ESTÁ SEU CLUBE DO CORAÇÃO?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoCondensed(
                      color: const Color(0xff5A2684),
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropDownRegioes(),
            ),
            ClubesWidget(),
          ],
        ),
      ),
    );
  }
}
