import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MemberWidget extends StatelessWidget {
  const MemberWidget({
    required this.imgPaths,
    required this.index,
    required this.title,
    super.key,
  });
  final Map<String, String> imgPaths;
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 13.w,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.6),
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10.sp)),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: SizedBox(
                height: 0.5 * constraints.maxHeight,
                width: double.infinity,
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(imgPaths.keys.elementAt(index)),
                    maxRadius: 100.w < 900 ? 20.w : 5.w,
                  ),
                ),
              ),
            ),
            Divider(color: Colors.black, thickness: 0.1.h),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    imgPaths.values.elementAt(index),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff376996)),
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xffff5e14),
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
