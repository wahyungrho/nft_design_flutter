import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonCardBrowseWidget extends StatelessWidget {
  final String? imageAsset;
  final String? title;
  final String? subtitle;
  const CommonCardBrowseWidget(
      {super.key, this.imageAsset, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Card(
            child: Container(
                width: 140,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(children: [
                  Expanded(
                      child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(16)),
                          child: Image.asset(
                              imageAsset ?? 'assets/images/img_popular_1.png',
                              fit: BoxFit.cover))),
                  ListTile(
                      title: Text(title ?? '',
                          style: GoogleFonts.inter()
                              .copyWith(fontWeight: FontWeight.w700)),
                      subtitle:
                          Text(subtitle ?? '', style: GoogleFonts.inter()))
                ]))));
  }
}
