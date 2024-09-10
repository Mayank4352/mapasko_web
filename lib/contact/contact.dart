import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Call the HomeAppBar widget here
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            SizedBox(
              width: double.infinity,
              height: 88.h,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20.h, right: 5.h, top: 5.h),
                    child: Container(
                      color: const Color(0x0f757575),
                      height: 35.h,
                      width: 20.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            size: 5.h,
                            color: const Color(0xffff5e14),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 2.h,
                              color: Colors.black,
                              fontFamily: GoogleFonts.nunito().fontFamily,
                            ),
                          ),
                          Text('+91-9910261081',
                              style: TextStyle(
                                fontSize: 2.h,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[600],
                                fontFamily: GoogleFonts.nunito().fontFamily,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.h, right: 5.h, top: 5.h),
                    child: Container(
                      color: const Color(0x0f757575),
                      height: 35.h,
                      width: 20.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            size: 5.h,
                            color: const Color(0xffff5e14),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'Email Address',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 2.h,
                              color: Colors.black,
                              fontFamily: GoogleFonts.nunito().fontFamily,
                            ),
                          ),
                          Text('mapskoroyal@gmail.com',
                              style: TextStyle(
                                fontSize: 2.h,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[600],
                                fontFamily: GoogleFonts.nunito().fontFamily,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 5.h),
                    child: Container(
                      color: const Color(0x0f757575),
                      height: 35.h,
                      width: 20.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 3.h)),
                          Icon(
                            Icons.location_on,
                            size: 5.h,
                            color: const Color(0xffff5e14),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Office Address',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 2.h,
                              color: Colors.black,
                              fontFamily: GoogleFonts.nunito().fontFamily,
                            ),
                          ),
                          Text(
                              '      C/O Maintenance Office, \n          Mapsko Casa Bella,\n Sector 82, Gurugram, Haryana',
                              style: TextStyle(
                                fontSize: 2.h,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[600],
                                fontFamily: GoogleFonts.nunito().fontFamily,
                              )),
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
