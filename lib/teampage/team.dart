import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/homeAppBar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> imgPaths = {
      "assets/sachdeva.png":
          "Lt. Colonel Darshan Sachdeva (Veteran) \nVice President",
      "assets/amandhull.png": "Er. Aman Dhull\nGeneral Secretary",
      "assets/nikhildhawan.png": "Mr. Nikhil Dhawan\nJoint Secretary",
      "assets/shavetagarg.png": "Mrs. Shaveta Garg\nTreasurer",
    };
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(),
            Text("OUR TEAM"),
            Text(
              "TEAM MEMBERS",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 40.h,

                  crossAxisCount: 4, // Number of columns in the grid
                  crossAxisSpacing: 10.sp, // Horizontal space between items
                  mainAxisSpacing: 10.sp, // Vertical space between items
                  //  childAspectRatio: 0.7326,
                  // Aspect ratio of items (width / height)
                ),
                itemCount: imgPaths.length,
                itemBuilder: (context, index) {
                  return MemberWidget(
                    imgPaths: imgPaths,
                    index: index,
                  );
                },
                padding: EdgeInsets.all(10),
              ),
            ),
            // MemberWidget()
          ],
        ),
      ),
    );
  }
}

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
