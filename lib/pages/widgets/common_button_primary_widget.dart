import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonButtonPrimaryWidge extends StatelessWidget {
  final String title;
  final Function onTap;
  final double? width;
  final EdgeInsetsGeometry? margin;
  const CommonButtonPrimaryWidge(
      {super.key,
      required this.title,
      required this.onTap,
      this.width,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? 180,
        height: 50,
        margin: margin ?? const EdgeInsets.only(top: 50),
        child: ElevatedButton(
            onPressed: () {
              onTap();
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                backgroundColor: const Color(0XFF1B4DEA),
                foregroundColor: const Color.fromARGB(255, 150, 172, 247)),
            child: Text(title,
                style: GoogleFonts.inter().copyWith(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700))));
  }
}
