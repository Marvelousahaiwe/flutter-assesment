import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:paxform_flutter/utls/color_const.dart';
import 'package:paxform_flutter/utls/image_string.dart';
import 'package:paxform_flutter/utls/size_config.dart';
import 'package:paxform_flutter/utls/text_style.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(16.r),
            ),
          ),
          padding: EdgeInsets.all(15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth(context),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.r),
                  ),
                ),
                padding: EdgeInsets.all(10.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26.r),
                          child: CircleAvatar(
                            radius: 26.r,
                            child: Image.asset(
                              width: 52.h,
                              height: 52.h,
                              ImageString.image,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ).addWidth(10.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jason Smith',
                              style: AppStyle.subTitle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text('Dentist ', style: AppStyle.textStyle),
                                Container(
                                  width: 6.w,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.textColor.withValues(
                                      alpha: 0.6,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Text(' ABC Medical Center',
                                    style: AppStyle.textStyle),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 12.h,
                          children: [
                            Icon(IconsaxPlusLinear.calendar_tick,
                                color: AppColors.white, size: 18.h),
                            Text(
                              '7 October 2021',
                              style: AppStyle.textStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          spacing: 12.h,
                          children: [
                            Icon(IconsaxPlusLinear.clock_1,
                                color: AppColors.white, size: 18.h),
                            Text(
                              '08:00 AM - 10:00 AM',
                              style: AppStyle.textStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50.h,
                    height: 50.h,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      IconsaxPlusBold.send_2,
                      color: AppColors.green,
                      size: 25.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ).addHeight(15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.h,
          children: List.generate(
            3,
            (index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              height: 3.h,
              width: 15.w,
              decoration: BoxDecoration(
                color: index == 0
                    ? AppColors.primaryColor
                    : AppColors.primaryColor.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
