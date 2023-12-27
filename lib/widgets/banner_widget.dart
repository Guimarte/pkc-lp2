import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1,
        height: MediaQuery.sizeOf(context).height * 0.25,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffF5BD00), width: 8),
          borderRadius: const BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: const Center(
          child: Text(
            "BANER",
            style: TextStyle(fontSize: 56),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
