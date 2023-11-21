import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:peanut/app/core/config/theme/color.dart';
import 'package:peanut/app/core/utils/navigation_service.dart';

// logger
Logger kLogger = Logger();
// Globel context
BuildContext kGlobContext = NavigationService.navigatorKey.currentContext!;

// ******** Headline **********
TextStyle kHeadlineLarge = TextStyle(
    color: kTextColor,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600);
TextStyle kHeadlineMedium = TextStyle(
    color: kTextColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600);
TextStyle headlineSmall = TextStyle(
    color: kTextColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600);
// ******* title ***********
TextStyle kTitleLarge = TextStyle(
    color: kTextColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400);
TextStyle kTitleMedium = TextStyle(
    color: kTextColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400);
TextStyle kTitleSmall = TextStyle(
    color: kTextColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400);
// ******* body ********
TextStyle kBodyLarge = TextStyle(
    color: kTextColor, fontSize: 16.spMax, fontWeight: FontWeight.w400);
TextStyle kBodyMedium =
    TextStyle(color: kTextColor, fontSize: 14.sp, fontWeight: FontWeight.w400);
TextStyle kBodySmall =
    TextStyle(color: kTextColor, fontSize: 12.sp, fontWeight: FontWeight.w400);
// label
TextStyle kLabelLarge = TextStyle(
    color: kTextColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600);
TextStyle kLabelMedium = TextStyle(
    color: kTextColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600);
TextStyle kLabelSmall = TextStyle(
    color: kTextColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600);
