import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
    required this.icon,
    required this.heading,
    required this.subHeading,
  });
  final IconData icon;
  final String heading;
  final String subHeading;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x0f757575),
      height: 35.h,
      width: 20.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 5.h,
            color: const Color(0xffff5e14),
          ),
          SizedBox(height: 5.h),
          Text(
            heading,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 2.h,
              color: Colors.black,
              fontFamily: GoogleFonts.nunito().fontFamily,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0.sp),
            child: Text(subHeading,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[600],
                  fontFamily: GoogleFonts.nunito().fontFamily,
                )),
          ),
        ],
      ),
    );
  }
}
