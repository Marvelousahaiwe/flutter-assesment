import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paxform_flutter/utls/color_const.dart';

class AppStyle {
  static const String kFontFamily = "Public Sans";
  static TextStyle title = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 23.sp,
      letterSpacing: 0.5.sp,
      fontFamily: kFontFamily,
      color: AppColors.white);

  static TextStyle subTitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    letterSpacing: 0.5.sp,
    wordSpacing: 0.5.sp,
    fontFamily: kFontFamily,
    color: AppColors.textColor,
  );
  static TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    letterSpacing: 0.5.sp,
    wordSpacing: 0.5.sp,
    height: 1.4.h,
    fontFamily: kFontFamily,
    color: AppColors.textColor,
  );
  static TextStyle smallTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    letterSpacing: 0.5.sp,
    wordSpacing: 0.5.sp,
    height: 1.h,
    fontFamily: kFontFamily,
    color: AppColors.textColor,
  );
}
