import 'package:carappui/UI/custom_widgets/general_button.dart';
import 'package:carappui/UI/screens/signin_screen.dart';
import 'package:carappui/UI/screens/signup_screen.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInProcess extends StatefulWidget {
  const SignInProcess({Key? key}) : super(key: key);

  @override
  _SignInProcessState createState() => _SignInProcessState();
}

class _SignInProcessState extends State<SignInProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/bluelogo.png"),
            ],
          ),
          SizedBox(
            height: 100.h,
          ),
          Text(
            "The Vehicle Portal Fit For You",
            style: TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w600,
              fontSize: 21.sp,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              Get.to(SignUpScreen());
            },
            child: GeneralButton(
              buttonBackgroungColor: baseColor,
              centerText: 'Sign Up Now',
              textColor: whiteColor,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 315.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: blackColor),
              color: blackColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.3),
                  spreadRadius: 0.2,
                  blurRadius: 2,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7.0),
                    child: Icon(
                      FontAwesomeIcons.apple,
                      size: 28,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "Sign in with Apple",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          // GeneralButton(
          //   buttonBackgroungColor: blackColor,
          //   centerText: 'Sign in with Apple',
          //   textColor: whiteColor,
          //   icon: FontAwesomeIcons.apple,
          // ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  color: blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SignInScreen());
                },
                child: Text(
                  "Sign In",
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    color: baseColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
