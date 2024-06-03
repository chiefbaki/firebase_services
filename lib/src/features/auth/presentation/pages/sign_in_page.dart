import 'package:firebase_service/generated/l10n.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_elevated_btn.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_scaffold.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:firebase_service/src/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:firebase_service/src/utils/consts/app_colors.dart';
import 'package:firebase_service/src/utils/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_icon_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailFocusNode = FocusNode();
  final _email = TextEditingController();
  final _passFocusNode = FocusNode();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailFocusNode.dispose();
    _email.dispose();
    _passFocusNode.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CScaffold(
        widget: Column(
      children: [
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 36),
          child: Column(
            children: [
              Text(
                S.of(context).signIn,
                style: GoogleFonts.nunito(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              70.verticalSpace,
              Text(
                S.of(context).enterYourEmailAndPassword,
                style: GoogleFonts.nunito(
                  fontSize: 16.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              133.verticalSpace,
              CTextFormField(
                hintText: S.of(context).email,
                controller: _email,
                focusNode: _emailFocusNode,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
              ),
              10.verticalSpace,
              CTextFormField(
                hintText: S.of(context).password,
                obscureText: true,
                controller: _password,
                focusNode: _passFocusNode,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
              ),
              50.verticalSpace,
              CElevatedButton(
                onPressed: () {},
                title: S.of(context).login,
              ),
              13.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).dontHaveAnAccount,
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey)),
                  CTextButton(onPressed: () {}, title: S.of(context).signUp)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: REdgeInsets.fromLTRB(16, 30, 16, 41),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 140,
                decoration: BoxDecoration(color: AppColors.black),
              ),
              15.horizontalSpace,
              Text(
                S.of(context).signInWith,
                style: GoogleFonts.nunito(
                    fontSize: 16, fontWeight: FontWeight.w400),
              ),
              15.horizontalSpace,
              Container(
                height: 1,
                width: 140,
                decoration: BoxDecoration(color: AppColors.black),
              ),
            ],
          ),
        ),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 36),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CIconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      I.logosFacebook,
                      height: 45.h,
                    ),
                  ),
                  CIconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        I.grommetIconsGoogle,
                        height: 45.h,
                      )),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
