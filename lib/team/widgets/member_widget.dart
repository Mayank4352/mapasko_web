import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MemberWidget extends StatelessWidget {
  const MemberWidget({
    required this.imgPaths,
    required this.index,
    super.key,
  });
  final Map<String, String> imgPaths;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 13.w,
      // color: Colors.orange,
      decoration: BoxDecoration(
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
                    maxRadius: 5.w,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    imgPaths.values.elementAt(index),
                    textAlign: TextAlign.center,
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
