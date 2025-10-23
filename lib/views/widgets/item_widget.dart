import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paxform_flutter/utls/color_const.dart';
import 'package:paxform_flutter/utls/image_string.dart';
import 'package:paxform_flutter/utls/size_config.dart';
import 'package:paxform_flutter/utls/text_style.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 10.h,
      mainAxisSpacing: 10.h,
      padding: EdgeInsets.zero,
      children: [
        itemCard(
          iconColor: AppColors.lightBlue,
          backgroundColor: AppColors.lightPurple,
          icon: ImageString.item1,
          title: 'Book Doctor\nAppointment',
          subtitle: 'Find a Doctor or Specialist',
        ),
        itemCard(
          iconColor: AppColors.lightGreen1,
          backgroundColor: AppColors.lightGreen,
          icon: ImageString.item2,
          title: 'Book Hospital\nAppointment',
          subtitle: 'Locate nearby hospital to visit',
        ),
      ],
    );
  }

  Widget itemCard({
    required Color iconColor,
    required Color backgroundColor,
    required String icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(12.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            icon,
            fit: BoxFit.cover,
            width: 42.sp,
            height: 42.sp,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyle.subTitle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                  letterSpacing: 0.2.sp,
                  height: 1.3.h,
                ),
              ).addHeight(5.h),
              Text(
                subtitle,
                style: AppStyle.textStyle.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
