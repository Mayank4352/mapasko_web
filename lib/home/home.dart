import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const HomePageDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomeAppBar(
              onPressedMobile: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
            Stack(
              children: [
                SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/hero_image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/Garden_mapsko.jpg',
                    height: 100.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: Container(
                      color: Colors.white.withOpacity(0.9),
                      height: 100.w < 900 ? 60.h : 30.h,
                      width: 100.w < 900 ? 90.w : 70.w,
                      child: Padding(
                        padding: EdgeInsets.all(2.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'MAPSKO ROYALE VILLE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 100.w < 900 ? 20.sp : 15.sp,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xff880100),
                                fontFamily: GoogleFonts.nunito().fontFamily,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              'Mapsko Royale Ville is a luxury society with apartments in perfect combination of comfort and style at prime location in Sector 82, Gurgaon surrounded with Malls, Banks, Schools and everything important in vicinity.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 100.w < 900 ? 15.sp : 11.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 44, 82),
                                fontFamily: GoogleFonts.nunito().fontFamily,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Mapsko Royale Ville Flat Owners Association',
                              style: TextStyle(
                                fontSize: 100.w < 900 ? 20.sp : 15.sp,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xff880100),
                                fontFamily: GoogleFonts.nunito().fontFamily,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              'For any residential community to become better, there is a need for a strong, dependable Owners Association. The main job of the Owners Association is to do everything possible that is a welfare to the residents and property owners. The current Royale Ville Flat Owners Association (RVFOA) has a fantastic leadership & dynamic team and is truly working for excellent positive changes to the community. The contribution of the current Association management is poised to make Mapsko Royale Ville one of the better communities to live in New Gurgaon.',
                              style: TextStyle(
                                fontSize: 100.w < 900 ? 15.sp : 10.2.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 44, 82),
                                fontFamily: GoogleFonts.nunito().fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
