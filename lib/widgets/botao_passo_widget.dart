import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoPassoWidget extends StatelessWidget {
  BotaoPassoWidget(
      {required this.function,
      required this.textoBotao,
      this.height,
      this.width,
      this.fontSize});
  Function function;
  String textoBotao;
  double? height;
  double? width;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero, // Set this
          padding: EdgeInsets.zero, // and this
        ),
        onPressed: () {
          function();
        },
        child: Text(textoBotao,
            style: GoogleFonts.smoochSans(
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
            ),
            overflow: TextOverflow.visible,
            maxLines: 1),
      ),
    );
  }
}
