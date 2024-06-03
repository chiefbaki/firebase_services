import 'package:firebase_service/generated/l10n.dart';
import 'package:firebase_service/src/features/auth/presentation/pages/sign_in_page.dart';
import 'package:firebase_service/src/features/auth/presentation/pages/sign_up_page.dart';
import 'package:firebase_service/src/utils/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(414, 896),
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: ThemeData(
                useMaterial3: false,
                scaffoldBackgroundColor: AppColors.white,
                inputDecorationTheme: InputDecorationTheme(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.grey)))),
            home: const SignInPage(),
          )),
    );
  }
}
