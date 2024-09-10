import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/teampage/widgets/member_widget.dart';
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
            const HomeAppBar(),
            const Text("OUR TEAM"),
            const Text(
              "TEAM MEMBERS",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
                padding: const EdgeInsets.all(10),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
