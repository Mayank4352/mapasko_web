import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';
import 'package:mapsko/team/widgets/member_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Map<String, String> rwaImgPaths = {
    'assets/pramod.png': 'Mr. Pramod Khullar\nPresident',
    "assets/sachdeva.png":
        "Lt. Colonel Darshan Sachdeva (Veteran) \nVice President",
    "assets/amandhull.png": "Er. Aman Dhull\nGeneral Secretary",
    "assets/nikhildhawan.png": "Mr. Nikhil Dhawan\nJoint Secretary",
    "assets/shavetagarg.png": "Mrs. Shaveta Garg\nTreasurer",
  };
  Map<String, String> abanteImgPaths = {
    "assets/mosam.jpg": "Mr. Mosam Kumar\nOperations Manager",
    "assets/amitkr.png": "Mr. Amit Kumar Yadav\nEstate Manager",
    "assets/sandeep.jpg": "Mr. Sandeep Yadav\nTechnical Manager",
    "assets/pooja.jpg": "Ms. Pooja Gupta\nHelp Desk"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const HomePageDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(
              onPressedMobile: () {
                log(scaffoldKey.currentState.toString());
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
            const Text(
              "RWA TEAM",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: 100.w < 900
                  ? ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 10.sp, bottom: 10.sp),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: rwaImgPaths.length,
                      itemBuilder: (context, index) {
                        return MemberWidget(
                          imgPaths: rwaImgPaths,
                          index: index,
                        );
                      })
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 40.h,
                        crossAxisCount: 4,
                        crossAxisSpacing: 10.sp,
                        mainAxisSpacing: 10.sp,
                      ),
                      itemCount: rwaImgPaths.length,
                      itemBuilder: (context, index) {
                        return MemberWidget(
                          imgPaths: rwaImgPaths,
                          index: index,
                        );
                      },
                      padding: const EdgeInsets.all(10),
                    ),
            ),
            const Text(
              "ABANTE TEAM",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: 100.w < 900
                  ? ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 10.sp, bottom: 10.sp),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: abanteImgPaths.length,
                      itemBuilder: (context, index) {
                        return MemberWidget(
                          imgPaths: abanteImgPaths,
                          index: index,
                        );
                      })
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 40.h,

                        crossAxisCount: 4, // Number of columns in the grid
                        crossAxisSpacing:
                            10.sp, // Horizontal space between items
                        mainAxisSpacing: 10.sp, // Vertical space between items
                        //  childAspectRatio: 0.7326,
                        // Aspect ratio of items (width / height)
                      ),
                      itemCount: abanteImgPaths.length,
                      itemBuilder: (context, index) {
                        return MemberWidget(
                          imgPaths: abanteImgPaths,
                          index: index,
                        );
                      },
                      padding: const EdgeInsets.all(10),
                    ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
