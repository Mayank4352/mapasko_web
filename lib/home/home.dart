import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
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
                Column(
                  children: [
                    HomeAppBar(
                      onPressedMobile: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                    ),
                    SizedBox(
                      height: 90.h,
                      width: double.infinity,
                      child: Center(
                        child: Text("MAPSKO\nROYALE VILLE",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.domine(
                                fontSize: 25.sp,
                                color: Colors.red[600],
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/mapsko-royal-ville-top2.jpg',
                    height: 100.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: Container(
                      color: Colors.white.withOpacity(0.5),
                      height: 100.w < 900 ? 60.h : 30.h,
                      width: 100.w < 900 ? 90.w : 40.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'MAPSKO ROYALE VILLE',
                            style: TextStyle(
                              fontSize: 100.w < 900 ? 20.sp : 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            'Mapsko Royale Ville is a luxury society with apartments and villas in perfect combination of comfort and style at prime location in Sector 82, Gurgaon surrounded with Malls, Banks, Schools and everything important in vicinity.',
                            style: TextStyle(
                              fontSize: 100.w < 900 ? 15.sp : 10.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'Mapsko Royale Ville Owners Association',
                            style: TextStyle(
                              fontSize: 100.w < 900 ? 20.sp : 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            'For any residential community to become better, there is a need for a strong, dependable Owners Association. The main job of the Owners Association is to do everything possible that is a welfare to the residents and property owners. The current Mapsko Royale Ville Association (MCBOA) has a fantastic leadership & dynamic team and is truly working for excellent positive changes to the community. The contribution of the current Association management is poised to make Mapsko Casa Bella one of the better communities to live in New Gurgaon.',
                            style: TextStyle(
                              fontSize: 100.w < 900 ? 15.sp : 10.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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
