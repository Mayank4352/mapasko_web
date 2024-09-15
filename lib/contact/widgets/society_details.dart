import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
    required this.icon,
    required this.heading,
    required this.subHeading,
    this.textAlign = TextAlign.justify,
  });
  final IconData icon;
  final String heading;
  final String subHeading;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.sp, bottom: 8.0.sp),
      child: Container(
        color: Colors.white.withOpacity(0.4),
        height: 35.h,
        width: 100.w < 900 ? 70.w : 20.w,
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
                fontWeight: FontWeight.w800,
                fontSize: 2.h,
                color: Colors.black,
                fontFamily: GoogleFonts.nunito().fontFamily,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: Text(subHeading,
                  textAlign: textAlign,
                  style: TextStyle(
                    fontSize: 100.w < 900 ? 15.sp : 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: GoogleFonts.nunito().fontFamily,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
