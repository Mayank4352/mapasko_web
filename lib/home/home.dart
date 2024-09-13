import 'package:flutter/material.dart';
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
      drawer: const HomePageDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomeAppBar(
              onPressedMobile: () {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
            Stack(
              children: [
                SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/Mapsko-Royale-Ville.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'MAPSKO ROYAL VILLE',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.red[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100.h,
              padding: EdgeInsets.all(12.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 3.w,
                      right: 1.w,
                    ),
                    child: Image.asset(
                      'assets/Mapsko-Royale-Ville.jpg',
                      fit: BoxFit.cover,
                      height: 20.h,
                      width: 10.w,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0.3.w, right: 2.w, top: 5.h),
                    child: Image.asset(
                      'assets/Mapsko-Royale-Ville.jpg',
                      fit: BoxFit.cover,
                      height: 20.h,
                      width: 10.w,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'MAPSKO ROYALE VILLE',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Mapsko Royale Ville is a luxury society with apartments and villas in perfect combination of comfort and style at prime location in Sector 82, Gurgaon surrounded with Malls, Banks, Schools and everything important in vicinity.',
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'Mapsko Royale Ville Owners Association',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'For any residential community to become better, there is a need for a strong, dependable Owners Association. The main job of the Owners Association is to do everything possible that is a welfare to the residents and property owners. The current Mapsko Royale Ville Association (MCBOA) has a fantastic leadership & dynamic team and is truly working for excellent positive changes to the community. The contribution of the current Association management is poised to make Mapsko Casa Bella one of the better communities to live in New Gurgaon.',
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
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
