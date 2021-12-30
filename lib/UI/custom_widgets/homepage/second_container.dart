import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondContainer extends StatefulWidget {
  String imgURL;
  String? text;
  SecondContainer({required this.imgURL, required this.text});

  @override
  _SecondContainerState createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99.w,
      height: 140.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
            offset: Offset(10, 10), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 13.0),
        child: Column(
          children: [
            Container(
              height: 44.44.h,
              width: 44.44.w,
              child: Image.asset(
                widget.imgURL,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
