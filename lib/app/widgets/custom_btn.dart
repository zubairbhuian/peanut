import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/config/theme/color.dart';
import '../core/config/theme/fonts.dart';
import '../core/config/theme/style.dart';

class PrimaryBtn extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final Widget child;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? elevation;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final BorderSide? side;

  const PrimaryBtn({
    Key? key,
    this.color,
    this.textColor,
    this.onPressed,
    this.borderRadius,
    this.style,
    this.height,
    this.width,
    this.elevation,
    this.padding,
    required this.child, this.side,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(boxShadow: [kbtnShadow]),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 2,
          textStyle: style ?? kLabelLarge.copyWith(color: textColor ?? kWhite),
          disabledBackgroundColor: kPrimaryColor.withOpacity(.8),
          disabledForegroundColor: kWhite,
          backgroundColor: color ?? kPrimaryColor,
          foregroundColor: textColor ?? kWhite,
          padding:
              padding ?? EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
          ),
          // ****** Border color *******
          side:side
          // const BorderSide(
          //   color: kPrimaryColor,
          //   width: 0,
          // ),
        ),
        child: child,
      ),
    );
  }
}

class OutLineBtn extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final TextStyle? textStyle;

  const OutLineBtn(
      {super.key,
      this.backgroundColor,
      this.foregroundColor,
      this.onPressed,
      this.borderRadius,
      this.padding,
      this.height,
      this.width,
      this.textStyle,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: padding ??
                EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            foregroundColor: foregroundColor ?? kPrimaryColor,
            side: const BorderSide(width: 1, color: kPrimaryColor),
            backgroundColor: backgroundColor ?? Colors.transparent,
            disabledForegroundColor: kWhite,
            disabledBackgroundColor: kDisabledColor,
            textStyle: textStyle ??
                TextStyle(
                    color: kRed,
                    fontFamily: Fonts.primary,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  borderRadius ?? 8.r), // Change the border radius value
            ),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}

class GradientBtn extends StatelessWidget {
  const GradientBtn({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130.sw,
        padding: EdgeInsets.symmetric(
          vertical: 13.h,
        ),
        decoration: BoxDecoration(
          gradient: onTap == null
              ? const LinearGradient(
                  colors: [
                    Color(0xffC2C2C2),
                    Color(0xffC2C2C2)
                  ], // Define your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : const LinearGradient(
                  colors: [
                    Color(0xff9F9F9F),
                    Color(0xff9F9F9F)
                  ], // Define your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius:
              BorderRadius.circular(50), // Optional: Add border radius
        ),
        child: Center(
          child: Text(
            text,
            style: kLabelMedium.copyWith(color: kWhite),
          ),
        ),
      ),
    );
  }
}
