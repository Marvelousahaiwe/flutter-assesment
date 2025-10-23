import 'package:flutter/material.dart';
import 'package:paxform_flutter/utls/color_const.dart';
import 'package:paxform_flutter/utls/text_style.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    required this.header,
    required this.onTap,
    super.key,
  });

  final String header;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          header,
          style: AppStyle.subTitle.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                'See All',
                style: AppStyle.textStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryColor,
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: AppColors.secondaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
