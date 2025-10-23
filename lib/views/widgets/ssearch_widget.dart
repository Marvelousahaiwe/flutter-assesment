import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:paxform_flutter/utls/color_const.dart';
import 'package:paxform_flutter/views/widgets/custom_formfield.dart';

class SsearchWidget extends StatelessWidget {
  const SsearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchTextField(
            controller: TextEditingController(),
            focusNode: FocusNode(),
            onTap: () {},
            hintText: 'Search',
            onChanged: (value) {},
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Container(
          width: 64.h,
          height: 64.h,
          decoration: BoxDecoration(
            color: AppColors.fieldBackground,
            borderRadius: BorderRadius.all(
              Radius.circular(14.r),
            ),
          ),
          child: const Icon(
            IconsaxPlusLinear.map,
            color: AppColors.primaryColor,
            weight: 2,
          ),
        ),
      ],
    );
  }
}
