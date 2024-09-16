import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    'assets/pramod.png': 'Mr. Pramod Khullar',
    "assets/sachdeva.png": "Lt. Colonel Darshan Sachdeva (Veteran)",
    "assets/amandhull.png": "Er. Aman Dhull",
    "assets/nikhildhawan.png": "Mr. Nikhil Dhawan",
    "assets/shavetagarg.png": "Mrs. Shaveta Garg",
  };
  List<String> rwaPositions = [
    'President',
    'Vice President',
    'General Secretary',
    'Joint Secretary',
    'Treasurer'
  ];

  Map<String, String> abanteImgPaths = {
    "assets/mosam.jpg": "Mr. Mosam Kumar",
    "assets/amitkr.png": "Mr. Amit Kumar Yadav",
    "assets/sandeep.jpg": "Mr. Sandeep Yadav",
    "assets/pooja.jpg": "Ms. Pooja Gupta"
  };
  List<String> abantePositions = [
    'Operations Manager',
    'Estate Manager\n9319884424',
    'Technical Manager\n9319884425',
    'Help Desk\n0124-5059418/9319884427'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const HomePageDrawer(),
      backgroundColor: Color(0xffEFEFEE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  height: 100.h,
                  width: double.infinity,
                  "assets/royale-ville-aerial.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        HomeAppBar(
                          onPressedMobile: () {
                            log(scaffoldKey.currentState.toString());
                            scaffoldKey.currentState!.openEndDrawer();
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0.sp),
                          child: Container(
                            width: 100.w < 900 ? 50.w : 20.w,
                            color: const Color(0xffff5e14),
                            padding: EdgeInsets.all(8.sp),
                            child: Text(
                              "RWA TEAM",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: 100.w < 900
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.only(
                                      top: 10.sp, bottom: 10.sp),
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: rwaImgPaths.length,
                                  itemBuilder: (context, index) {
                                    return MemberWidget(
                                      imgPaths: rwaImgPaths,
                                      index: index,
                                      title: rwaPositions[index],
                                    );
                                  })
                              : GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 42.h,
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10.sp,
                                    mainAxisSpacing: 10.sp,
                                  ),
                                  itemCount: rwaImgPaths.length,
                                  itemBuilder: (context, index) {
                                    return MemberWidget(
                                      imgPaths: rwaImgPaths,
                                      index: index,
                                      title: rwaPositions[index],
                                    );
                                  },
                                  padding: const EdgeInsets.all(10),
                                ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0.sp),
                          child: Container(
                            width: 100.w < 900 ? 60.w : 25.w,
                            color: const Color(0xffff5e14),
                            padding: EdgeInsets.all(8.sp),
                            child: Text(
                              "ABANTE TEAM",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: 100.w < 900
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.only(
                                      top: 10.sp, bottom: 10.sp),
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: abanteImgPaths.length,
                                  itemBuilder: (context, index) {
                                    return MemberWidget(
                                      imgPaths: abanteImgPaths,
                                      index: index,
                                      title: abantePositions[index],
                                    );
                                  })
                              : GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 42.h,
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10.sp,
                                    mainAxisSpacing: 10.sp,
                                  ),
                                  itemCount: abanteImgPaths.length,
                                  itemBuilder: (context, index) {
                                    return MemberWidget(
                                      imgPaths: abanteImgPaths,
                                      index: index,
                                      title: abantePositions[index],
                                    );
                                  },
                                  padding: const EdgeInsets.all(10),
                                ),
                        ),
                        const Footer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
