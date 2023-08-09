import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextFieldWidget extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText;
  const CommonTextFieldWidget(
      {super.key,
      this.label,
      this.controller,
      this.hintText,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(label ?? '', style: GoogleFonts.inter().copyWith(fontSize: 16)),
      if (label != null) const SizedBox(height: 8),
      Container(
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0XFFF7F9FC),
              borderRadius: BorderRadius.circular(15)),
          child: TextFormField(
              controller: controller,
              obscureText: obscureText ?? false,
              decoration: InputDecoration(
                  hintText: hintText ?? '',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.inter().copyWith(
                      fontWeight: FontWeight.w300, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color(0XFF1B4DEA), width: 1.0))))),
      const SizedBox(height: 20)
    ]);
  }
}
