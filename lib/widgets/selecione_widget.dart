import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SelecioneWidget extends StatelessWidget {
  const SelecioneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width.isLowerThan(720)
        ? Container(
            width: MediaQuery.sizeOf(context).width * 1,
            color: const Color(0xff5A2684),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                  child: Text(
                    textAlign: TextAlign.center,
                    "  Defenda seu clube preferido e participe dos melhores \ncampeonatos de poker no aplicativo X-Poker! \n\nResgate agora seus R\$30 de bônus no Chippix \ne venha se divertir com seus amigos!\n\nDispute premiações incríveis \ne conquiste o título de CAMPEÃO!",
                    style: GoogleFonts.roboto(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        textStyle: Theme.of(context).textTheme.displayMedium),
                  ),
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "SEJA PKC!",
                      style: GoogleFonts.smoochSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white)),
                  TextSpan(
                      text: "SEJA CAMPEÃO!",
                      style: GoogleFonts.smoochSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: const Color(0xffF5BD00)))
                ]))
              ],
            ),
          )
        : Container(
            width: MediaQuery.sizeOf(context).width * 1,
            color: const Color(0xff5A2684),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                  child: Text(
                    textAlign: TextAlign.center,
                    "  Defenda seu clube preferido e participe dos melhores \ncampeonatos de poker no aplicativo X-Poker! \n\nResgate agora seus R\$30 de bônus no Chippix \ne venha se divertir com seus amigos!\n\nDispute premiações incríveis \ne conquiste o título de CAMPEÃO!",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        textStyle: Theme.of(context).textTheme.displayMedium),
                  ),
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "SEJA PKC!",
                      style: GoogleFonts.smoochSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Colors.white)),
                  TextSpan(
                      text: "SEJA CAMPEÃO!",
                      style: GoogleFonts.smoochSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: const Color(0xffF5BD00)))
                ]))
              ],
            ),
          );
  }
}
