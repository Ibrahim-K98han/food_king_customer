import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../util/constant.dart';

class ActiveOrderStatus extends StatelessWidget {
  const ActiveOrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: InkWell(
        onTap: () {
        },
        child: Container(
          height: 100.h,
          width: 360.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColor.viewAllbg,
          ),
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: SvgPicture.asset(
                            Images.iconRouting,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 8.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your rider has pickup your food",
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: AppColor.primaryColor),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "It will take Less than 5 minutes to get your food.",
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: AppColor.primaryColor),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: SvgPicture.asset(
                        Images.iconRouting,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 302.w,
                  height: 32.h,
                  child: SvgPicture.asset(
                    Images.iconTimeline,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
