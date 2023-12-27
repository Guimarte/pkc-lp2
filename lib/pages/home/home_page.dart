import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pkc/pages/home/home_controller.dart';
import 'package:pkc/widgets/footer_widget.dart';
import 'package:pkc/widgets/passo1_widget.dart';
import 'package:pkc/widgets/passo2_widget.dart';
import 'package:pkc/widgets/passo3_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: MediaQuery.sizeOf(context).height * 0.09,
          backgroundColor: const Color(0xff5A2684),
          title: Wrap(alignment: WrapAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/pkc_roxo.png",
                    color: Colors.white,
                    height: MediaQuery.sizeOf(context).height * 0.08,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(" GARANTA SEU BÔNUS!",
                            style: GoogleFonts.robotoCondensed(
                              fontSize: MediaQuery.sizeOf(context).width < 400
                                  ? 20
                                  : 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              decorationColor: Theme.of(context).cardColor,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ])),
      body: SingleChildScrollView(
        controller: homeController.scrollController.value,
        child: Column(
          children: [
            Passo1Widget(),
            Passo2Widget(),
            Passo3Widget(),
            FooterWidget()
          ],
        ),
      ),
    );
  }
}
