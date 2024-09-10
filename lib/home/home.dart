import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HomeAppBar(),
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
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.all(12.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
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
                            padding: EdgeInsets.only(
                                left: 0.3.w, right: 2.w, top: 5.h),
                            child: Image.asset(
                              'assets/Mapsko-Royale-Ville.jpg',
                              fit: BoxFit.cover,
                              height: 20.h,
                              width: 10.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MAPSKO CASA BELLA',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            'Mapsko Casa Bella is a luxury society with apartments and villas in perfect combination of comfort and style at prime location in Sector 82, Gurgaon surrounded with Malls, Banks, Schools and everything important in vicinity.',
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'Mapsko Casa Bella Owners Association',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            'For any residential community to become better, there is a need for a strong, dependable Owners Association. The main job of the Owners Association is to do everything possible that is a welfare to the residents and property owners. The current Mapsko Casa Bella Association (MCBOA) has a fantastic leadership & dynamic team and is truly working for excellent positive changes to the community. The contribution of the current Association management is poised to make Mapsko Casa Bella one of the better communities to live in New Gurgaon.',
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            children: [
                              Icon(Icons.email,
                                  color: Colors.orange, size: 24.sp),
                              SizedBox(width: 2.w),
                              Text(
                                'mcboa82@gmail.com',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Icon(Icons.phone,
                                  color: Colors.orange, size: 24.sp),
                              SizedBox(width: 2.w),
                              Text(
                                '+91-9910261081',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
