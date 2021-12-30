import 'dart:ui';

import 'package:carappui/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReminderAlert extends StatefulWidget {
  @override
  _ReminderAlertState createState() => _ReminderAlertState();
}

class _ReminderAlertState extends State<ReminderAlert> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      width: 315.w,
      height: 520.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Container(
            width: 315.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Set Reminder To Renew",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: whiteColor),
                )
              ],
            ),
          ),
          SizedBox(
            height: 38.h,
          ),
          Column(children: <Widget>[
            Expanded(
              child: CupertinoPicker(
                useMagnifier: true,
                magnification: 1.5,
                backgroundColor: Colors.white,
                itemExtent: 40.0,
                onSelectedItemChanged: (int index) {
                  print(selected);
                  setState(() {
                    selected = index;
                  });
                  print(selected);
                },
                children: <Widget>[
                  Text(
                    "Text 1",
                    style: TextStyle(
                        color: selected == 0 ? Colors.blue : Colors.black,
                        fontSize: 22.0),
                  ),
                  Text(
                    "Text 2",
                    style: TextStyle(
                        color: selected == 1 ? Colors.blue : Colors.black,
                        fontSize: 22.0),
                  ),
                  Text(
                    "Text 3",
                    style: TextStyle(
                        color: selected == 2 ? Colors.blue : Colors.black,
                        fontSize: 22.0),
                  ),
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}


// import 'package:carappui/constants/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MotAlert extends StatelessWidget {
//   const MotAlert({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 315.w,
//       height: 181.h,
//       decoration: BoxDecoration(
//         color: whiteColor,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         children: [
//           Container(
//             width: 315.w,
//             height: 70.h,
//           ),
//         ],
//       ),
//     );
//   }
// }
