import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../core/config/theme/color.dart';

class AppIndecator extends StatelessWidget {
  final double? value;
  const AppIndecator({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return  SpinKitFadingCircle(
      color: kPrimaryColor,
      size: 45.0.sp,
    );
  }
}
