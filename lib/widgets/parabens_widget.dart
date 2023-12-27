import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ParabensWidget extends StatelessWidget {
  const ParabensWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width.isLowerThan(720)
        ? Container(
            width: MediaQuery.sizeOf(context).width * 1,
            color: const Color(0xffF7F1F7),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "PARABÉNS! AGORA VOCÊ É PKCEIRO!",
                    style: GoogleFonts.robotoCondensed(
                        decoration: TextDecoration.underline,
                        decorationColor: const Color(0xff5A2684),
                        color: const Color(0xff5A2684),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Você completou seu cadastro no Chippix! \n\nR\$30 já foram creditados \nna sua conta PKC no X-Poker. \n\nAgora você está pronto para ser \nCAMPEÃO da PKC!",
                      style: GoogleFonts.roboto(
                          color: const Color(0xff5A2684),
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
                            color: const Color(0xff5A2684))),
                    TextSpan(
                        text: "SEJA CAMPEÃO!",
                        style: GoogleFonts.smoochSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: const Color(0xffF5BD00)))
                  ]))
                ],
              ),
            ),
          )
        : Container(
            width: MediaQuery.sizeOf(context).width * 1,
            color: const Color(0xffF7F1F7),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "PARABÉNS! AGORA VOCÊ É PKCEIRO!",
                    style: GoogleFonts.robotoCondensed(
                        decoration: TextDecoration.underline,
                        decorationColor: const Color(0xff5A2684),
                        color: const Color(0xff5A2684),
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Você completou seu cadastro no Chippix! \n\nR\$30 já foram creditados \nna sua conta PKC no X-Poker. \n\nAgora você está pronto para ser \nCAMPEÃO da PKC!",
                      style: GoogleFonts.roboto(
                          color: const Color(0xff5A2684),
                          fontWeight: FontWeight.w300,
                          textStyle: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(fontSize: 30)),
                    ),
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "SEJA PKC!",
                        style: GoogleFonts.smoochSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 80,
                            color: const Color(0xff5A2684))),
                    TextSpan(
                        text: "SEJA CAMPEÃO!",
                        style: GoogleFonts.smoochSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 80,
                            color: const Color(0xffF5BD00)))
                  ]))
                ],
              ),
            ),
          );
  }
}
