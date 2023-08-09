import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonCardPopularWidget extends StatelessWidget {
  final String? imageAsset;
  final String? title;
  final String? subtitle;
  const CommonCardPopularWidget(
      {super.key, this.imageAsset, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: Card(
        child: Container(
            width: 270,
            height: 270,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Column(children: [
              Expanded(
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(16)),
                      child: Image.asset(
                          imageAsset ?? 'assets/images/img_popular_1.png',
                          fit: BoxFit.cover))),
              ListTile(
                  title: Text(title ?? '',
                      style: GoogleFonts.inter()
                          .copyWith(fontWeight: FontWeight.w700)),
                  subtitle: RichText(
                      text: TextSpan(
                          text: 'Ends in',
                          style:
                              GoogleFonts.inter().copyWith(color: Colors.grey),
                          children: <TextSpan>[
                        TextSpan(
                            text: ' $subtitle',
                            style: GoogleFonts.inter()
                                .copyWith(color: const Color(0XFFF86780)))
                      ])),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Image.asset('assets/images/pic_rating_trailing.png',
                        width: 20, height: 25),
                    const SizedBox(width: 5),
                    Text('12.4',
                        style: GoogleFonts.inter().copyWith(
                            fontWeight: FontWeight.w700, fontSize: 16))
                  ]))
            ])),
      ),
    );
  }
}
