import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:paxform_flutter/models/doc_details_model.dart';
import 'package:paxform_flutter/utls/color_const.dart';
import 'package:paxform_flutter/utls/image_string.dart';
import 'package:paxform_flutter/utls/size_config.dart';
import 'package:paxform_flutter/utls/text_style.dart';

class NearestDoctorsWidget extends StatelessWidget {
  const NearestDoctorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        nearestDoctors.length,
        (i) {
          final doc = nearestDoctors[i];
          return Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.1),
                  blurRadius: 8.r,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            margin: EdgeInsets.only(bottom: 15.h),
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 42.h,
                        width: 42.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(doc.image!), fit: BoxFit.cover),
                          border: Border.all(
                            color: AppColors.fieldBackground,
                            width: 1.13,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ).addWidth(10.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(doc.name!, style: AppStyle.subTitle),
                            Text('${doc.specialty} | ${doc.yearOfE}'),
                            Text.rich(
                              TextSpan(
                                text: '${doc.rating} ',
                                children: [
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Icon(
                                      Icons.star_rate_rounded,
                                      size: 18.h,
                                      color: AppColors.orange,
                                    ),
                                  ),
                                  TextSpan(text: ' ${doc.reviewCount} Reviews'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      doc.like == true
                          ? Icon(
                              Icons.favorite,
                              color: AppColors.red,
                              size: 20.h,
                            )
                          : SvgPicture.asset(
                              ImageString.like,
                            ),
                    ],
                  ).addHeight(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            const Icon(
                              IconsaxPlusLinear.calendar,
                              color: AppColors.primaryColor,
                            ).addWidth(5.w),
                            Expanded(
                              child: Text(
                                doc.date!,
                                style: AppStyle.subTitle.copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            const Icon(
                              IconsaxPlusLinear.clock_1,
                              color: AppColors.primaryColor,
                            ).addWidth(5.w),
                            Text(
                              doc.avaliableTime!,
                              style: AppStyle.textStyle.copyWith(
                                color: AppColors.primaryColor,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).addHeight(20.h),
                  const Divider().addHeight(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            IconsaxPlusLinear.location,
                            color: AppColors.green,
                            size: 16.h,
                          ).addWidth(5.w),
                          Text(
                            'Horizon Medical Center',
                            style: AppStyle.textStyle.copyWith(
                              color: AppColors.green,
                            ),
                          ).addWidth(10.h),
                        ],
                      ),
                      Text(
                        doc.distance!,
                        style: AppStyle.textStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
