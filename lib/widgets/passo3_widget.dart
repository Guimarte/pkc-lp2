import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pkc/pages/home/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Passo3Widget extends StatelessWidget {
  Passo3Widget({super.key});
  HomeController homeController = Get.find();

  final _controller2 = YoutubePlayerController.fromVideoId(
    videoId: 'yjWS1k2T-PA',
  );
  buttonSize(BuildContext context) {
    return MediaQuery.sizeOf(context).width *
        (MediaQuery.sizeOf(context).width > 720 ? 0.25 : 0.80);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: homeController.key3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '3º PASSO',
                  style: GoogleFonts.robotoCondensed(
                      color: Color(0xff5A2683),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      fontSize: 16),
                ),
                Text(
                  ': CADASTRE-SE NO CHIPPIX',
                  style: GoogleFonts.robotoCondensed(
                      color: Color(0xff5A2683),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            MediaQuery.sizeOf(context).width > 720
                ? Column(
                    children: conteudoPasso2(context),
                  )
                : Row(
                    children: conteudoPasso2(context),
                  )
          ],
        ),
      ),
    );
  }

  conteudoPasso2(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff5A2683), width: 4),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.5,
              child: AspectRatio(
                aspectRatio: 16 / 9, // Defina a proporção desejada para o vídeo
                child: YoutubePlayer(
                  controller: _controller2,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.3,
        child: MediaQuery.sizeOf(context).width > 720
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: conteudoBotoesLoja(context, false),
              )
            : Column(
                children: conteudoBotoesLoja(context, true),
              ),
      )
    ];
  }

  conteudoBotoesLoja(BuildContext context, bool isVertical) {
    return [
      Image.asset(
        "assets/images/android.png",
        height: 50,
      ),
      isVertical
          ? SizedBox(
              height: 10,
            )
          : SizedBox(
              width: 24,
            ),
      InkWell(
        onTap: () {
          launchUrl(Uri.parse(
              "https://apps.apple.com/us/app/x-poker-poker-with-friends/id1534470447"));
        },
        child: Image.asset(
          "assets/images/apple.png",
          height: 50,
        ),
      ),
      // Text(
      //   "CLIQUE PARA BAIXAR",
      //   style: GoogleFonts.robotoCondensed(
      //       color: Color(0xff5A2683),
      //       fontWeight: FontWeight.bold,
      //       decorationColor: const Color(0xff5A2683),
      //       fontSize: 10),
      // )
    ];
  }
}
