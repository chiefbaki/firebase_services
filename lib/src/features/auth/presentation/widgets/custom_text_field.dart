import 'package:firebase_service/generated/l10n.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:firebase_service/src/utils/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final String hintText;
  final bool? obscureText;
  const CTextFormField(
      {super.key,
      required this.controller,
      required this.focusNode,
      required this.hintText,
      required this.textInputAction,
      required this.textInputType,
      this.obscureText});

  @override
  State<CTextFormField> createState() => _CTextFormFieldState();
}

class _CTextFormFieldState extends State<CTextFormField> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPhysics: ClampingScrollPhysics(),
      scrollPadding: REdgeInsets.only(bottom: 100),
      style: GoogleFonts.nunito(
          fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.grey),
      cursorColor: AppColors.lightBlue,
      textInputAction: widget.textInputAction,
      obscureText: _isVisible,
      controller: widget.controller,
      maxLines: 1,
      focusNode: widget.focusNode,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
          suffixIcon: widget.obscureText != null
              ? CTextButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  title: S.of(context).forgotPassword,
                )
              : const SizedBox(),
          contentPadding: REdgeInsets.only(top: 10),
          hintText: widget.hintText,
          hintStyle: GoogleFonts.nunito(
              fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColors.grey),
          enabledBorder: underlineInputBorder(),
          focusedBorder: underlineInputBorder(),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.red))),
    );
  }

  UnderlineInputBorder underlineInputBorder() {
    return UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey));
  }
}
