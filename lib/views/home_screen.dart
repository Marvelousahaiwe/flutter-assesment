import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:paxform_flutter/views/widgets/appointment_widget.dart';
import 'package:paxform_flutter/utls/color_const.dart';
import 'package:paxform_flutter/utls/size_config.dart';
import 'package:paxform_flutter/utls/text_style.dart';
import 'package:paxform_flutter/views/widgets/ssearch_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text(
                  "Medical Center",
                  style: AppStyle.title.copyWith(
                    color: Colors.white,
                  ),
                ).addHeight(20.h),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(26.r),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        color: Colors.grey,
                      ),
                      width: 60,
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SsearchWidget().addHeight(20.h),
                          const AppointmentWidget().addHeight(20.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ).addHeight(30.h),
            ],
          ),
        ),
      ),
    );
  }
}
