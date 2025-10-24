import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paxform_flutter/models/medical_center_model.dart';
import 'package:paxform_flutter/utls/color_const.dart';
import 'package:paxform_flutter/utls/image_string.dart';
import 'package:paxform_flutter/utls/size_config.dart';
import 'package:paxform_flutter/utls/text_style.dart';

class NearestMedicalsWidget extends StatelessWidget {
  const NearestMedicalsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: medicalcenters.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, i) {
          final centers = medicalcenters[i];
          return Container(
            padding: EdgeInsets.all(12.r),
            margin: EdgeInsets.only(bottom: 10.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.1),
                  blurRadius: 8.r,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Image.asset(
                        centers.image!,
                        height: 137.h,
                        width: 160.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: 10.h,
                        right: 10.h,
                        child: SvgPicture.asset(
                          ImageString.like,
                        ))
                  ],
                ),
                Text(
                  centers.name!,
                  style: AppStyle.subTitle.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ).addHeight(5.h),
                Text(
                  centers.location!,
                  style: AppStyle.textStyle,
                ).addHeight(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      centers.reviews!,
                      style: AppStyle.smallTextStyle,
                    ),
                    SizedBox(width: 30.w),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          centers.ratings!.toString(),
                          style: AppStyle.smallTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Icon(
                          Icons.star_rate_rounded,
                          color: AppColors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
