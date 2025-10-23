import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paxform_flutter/utls/color_const.dart';
import 'package:paxform_flutter/utls/image_string.dart';
import 'package:paxform_flutter/utls/text_style.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    required this.controller,
    required this.focusNode,
    this.color,
    this.hintText,
    this.onTap,
    required this.onChanged,
    super.key,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final Function()? onTap;
  final Color? color;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 0.h,
        right: 0.h,
      ),
      child: TextFormField(
        style: AppStyle.subTitle,
        controller: controller,
        focusNode: focusNode,
        cursorColor: AppColors.black,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 30.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(color: AppColors.fieldBackground),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(color: AppColors.fieldBackground),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(color: AppColors.fieldBackground),
          ),
          fillColor: color ?? AppColors.fieldBackground,
          filled: true,
          hintText: hintText ?? 'Search ',
          hintStyle: AppStyle.subTitle,
          suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Align(
                widthFactor: 0.5,
                child: InkWell(
                  onTap: onTap,
                  child: SvgPicture.asset(
                    ImageString.filter,
                    height: 20.sp,
                    width: 20.sp,
                  ),
                ),
              )),
          suffixIconColor: AppColors.black,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Align(
              widthFactor: 0.55,
              child: Icon(Icons.search, color: AppColors.black, size: 20.sp),
            ),
          ),
        ),
      ),
    );
  }
}
