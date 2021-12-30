import 'package:carappui/constants/colors.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../customformatter.dart';

String selectedCountryName = 'Pakistan';

class AddNewVehicleScreen extends StatefulWidget {
  @override
  State<AddNewVehicleScreen> createState() => _AddNewVehicleScreenState();
}

class _AddNewVehicleScreenState extends State<AddNewVehicleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 36.h,
                  width: 36.h,
                  margin:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                        color: greyColor.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              height: 294.h,
              width: 315.w,
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: greyColor.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Car Details',
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    'Please enter your vehicle registration '
                    'below in order to proceed.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Color(0xff777777),
                    ),
                  ),
                  SizedBox(height: 26.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 33.w,
                        height: 50.h,
                        padding: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          border: Border.all(
                            color: greyColor,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(height: 3.h),
                            Image.asset(
                              'assets/images/vehiclehub/ukflag.png',
                              height: 13.h,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              'GB',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 230.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: yellowStar,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r),
                          ),
                        ),
                        child: Center(
                          child: TextField(
                            inputFormatters: [
                              CustomInputFormatter(),
                              FilteringTextInputFormatter.allow(
                                  RegExp(r"[A-Z0-9]+")),
                            ],
                            // keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'ENTER VEHICLE REG',
                                contentPadding: EdgeInsets.only(left: 15.w),
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: Color(0xff8D8D8D),
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 23.h),
                  Container(
                    height: 50.h,
                    width: 260.w,
                    decoration: BoxDecoration(
                      color: baseColor,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Center(
                      child: Text(
                        'ADD VEHICLE',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
