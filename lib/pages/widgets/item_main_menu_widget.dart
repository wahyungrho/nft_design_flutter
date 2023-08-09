import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemMainMenuWidget extends StatelessWidget {
  final String imageAsset;
  final String text;
  final int? index;
  const ItemMainMenuWidget(
      {super.key, required this.imageAsset, required this.text, this.index});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 20,
          width: 20,
          margin: const EdgeInsets.only(bottom: 6),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imageAsset)))),
      Text(text,
          style: GoogleFonts.inter().copyWith(
              fontWeight: (index == 0) ? FontWeight.w700 : FontWeight.w500,
              color: (index == 0) ? const Color(0XFF1B4DEA) : Colors.grey))
    ]);
  }
}
