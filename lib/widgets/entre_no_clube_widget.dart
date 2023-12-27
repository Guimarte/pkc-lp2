import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EntreNoClube extends StatelessWidget {
  EntreNoClube({super.key});

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
                    "ENTRE NO SEU CLUBE",
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
                      "Clique no link abaixo para se \ninscrever no clube que você escolheu. ",
                      style: GoogleFonts.roboto(
                          color: const Color(0xff5A2684),
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff5A2684),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Row(
                                children: [
                                  Text(
                                    "CLIQUE ",
                                    style: GoogleFonts.smoochSans(fontSize: 16),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xff5A2684),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Center(
                              child: Text(
                                "https://xpoker.page.link/fVDc",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            )
                          ]),
                    ),
                  ),
                  Text(
                    "Clique no link para tirar suas \n dúvidas com o Chico",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        color: const Color(0xff5A2684),
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffF5BD00),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: const BoxDecoration(
                                  color: Color(0xff5A2684),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Row(
                                children: [
                                  Text(
                                    "CLIQUE ",
                                    style: GoogleFonts.smoochSans(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Center(
                              child: Text(
                                "https://wa.me/message/7UGBBZ5RYI5KB1",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xff5A2684)),
                              ),
                            )
                          ]),
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
                    "ENTRE NO SEU CLUBE",
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
                      "Clique no link abaixo para se \ninscrever no clube que você escolheu. ",
                      style: GoogleFonts.roboto(
                          color: const Color(0xff5A2684),
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff5A2684),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "CLIQUE ",
                                  style: GoogleFonts.smoochSans(fontSize: 32),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xff5A2684),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                              width:
                                  10), // Adjust the space between the two containers
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "https://xpoker.page.link/fVDc",
                                style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Clique no link para tirar suas \n dúvidas com o Chico",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: const Color(0xff5A2684),
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffF5BD00),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: const BoxDecoration(
                              color: Color(0xff5A2684),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "CLIQUE ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.smoochSans(
                                    fontSize: 32,
                                    color: Colors.white,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                              width:
                                  10), // Adjust the space between the two containers
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "https://wa.me/message/7UGBBZ5RYI5KB1",
                                style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xff5A2684),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
