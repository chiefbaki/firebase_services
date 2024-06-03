import 'package:firebase_service/src/utils/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const CTextButton({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        child: Text(
          title,
          style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.lightBlue),
        ));
  }
}
