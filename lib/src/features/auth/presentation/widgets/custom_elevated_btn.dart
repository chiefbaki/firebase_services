import 'package:firebase_service/src/utils/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              overlayColor: AppColors.grey.withOpacity(0.8),
              elevation: 0,
              shadowColor: AppColors.white,
              backgroundColor: AppColors.black,
              padding: REdgeInsets.symmetric(horizontal: 125, vertical: 14),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20).r)),
          child: Text(
            title,
            style: GoogleFonts.nunito(
                fontSize: 22.sp, fontWeight: FontWeight.w400),
          )),
    );
  }
}
