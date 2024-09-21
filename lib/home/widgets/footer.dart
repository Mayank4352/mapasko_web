import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      height: 3.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '©Madhav Gupta & Mayank Sharma. All Rights Reserved.',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
