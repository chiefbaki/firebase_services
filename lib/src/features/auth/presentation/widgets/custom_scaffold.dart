import 'package:firebase_service/src/utils/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CScaffold extends StatelessWidget {
  final Widget widget;
  const CScaffold({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      I.circle,
                      width: 350.w,
                    ),
                  ),
                  widget
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
