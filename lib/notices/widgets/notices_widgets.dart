import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NoticeWidget extends StatelessWidget {
  const NoticeWidget({
    super.key,
    required this.heading,
    required this.downloadURL,
  });
  final String heading;
  final String downloadURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.sp, bottom: 8.0.sp),
      child: GestureDetector(
        onTap: () async {
          await EasyLauncher.url(url: downloadURL);
        },
        child: Container(
          color: Colors.white.withOpacity(0.6),
          height: 35.h,
          width: 100.w < 900 ? 70.w : 20.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit_document,
                size: 5.h,
                color: const Color(0xffff5e14),
              ),
              SizedBox(height: 5.h),
              Text(
                heading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 100.w < 900 ? 22.sp : 15.sp,
                  color: const Color.fromARGB(255, 0, 44, 82),
                  fontFamily: GoogleFonts.nunito().fontFamily,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
