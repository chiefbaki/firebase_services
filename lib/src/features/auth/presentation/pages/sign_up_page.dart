import 'package:firebase_service/generated/l10n.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_elevated_btn.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_scaffold.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:firebase_service/src/utils/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  final _nameNode = FocusNode();
  final _emailNode = FocusNode();
  final _passwordNode = FocusNode();
  final _confirmPasswordNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("info");
    return CScaffold(
      widget: Padding(
        padding: REdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            Text(
              S.of(context).signUp,
              style: GoogleFonts.nunito(
                fontSize: 40.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            70.verticalSpace,
            Text(
              S.of(context).firstCreateYourAccount,
              style: GoogleFonts.nunito(
                fontSize: 16.sp,
                color: AppColors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            110.verticalSpace,
            CTextFormField(
                controller: _name,
                focusNode: _nameNode,
                hintText: S.of(context).fullName,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.name),
            10.verticalSpace,
            CTextFormField(
                controller: _email,
                focusNode: _emailNode,
                hintText: S.of(context).email,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress),
            10.verticalSpace,
            CTextFormField(
                controller: _password,
                focusNode: _passwordNode,
                hintText: S.of(context).password,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text),
            10.verticalSpace,
            CTextFormField(
                controller: _confirmPassword,
                focusNode: _confirmPasswordNode,
                hintText: S.of(context).confirmYourPassword,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.datetime),
            60.verticalSpace,
            CElevatedButton(title: S.of(context).signUp, onPressed: () {}),
            13.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).alreadyHaveAnAccount,
                    style: GoogleFonts.nunito(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey)),
                CTextButton(onPressed: () {}, title: S.of(context).login)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
