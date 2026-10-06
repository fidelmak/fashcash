import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.title,
    this.size = 16,
    this.weight = FontWeight.normal,
    this.color = AppColors.black,
    this.align = TextAlign.left,
  });

  final String title;
  final TextAlign align;

  final double size;
  final FontWeight weight;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: align,
      title,
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
