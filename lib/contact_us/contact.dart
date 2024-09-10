import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/homeAppBar.dart';
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
            HomeAppBar(),
            SizedBox(
              width: double.infinity,
              height: 90.h,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20.h, right: 5.h, top: 5.h),
                    child: Container(
                      color: Color(0xf757575),
                      height: 35.h,
                      width: 20.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.call),
                            iconSize: 5.h,
                            splashColor: Colors.white,
                            color: Color(0xffff5e14),
                            padding: EdgeInsets.all(1.h),
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
                          Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Call Now',
                                    style: TextStyle(
                                      fontSize: 2.h,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.nunito().fontFamily,
                                    )),
                                style: const ButtonStyle(
                                    backgroundColor:
                                        WidgetStatePropertyAll<Color>(
                                            Color(0xffff5e14)))),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.h, right: 5.h, top: 5.h),
                    child: Container(
                      color: Color(0xf757575),
                      height: 35.h,
                      width: 20.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.email),
                            iconSize: 5.h,
                            color: Color(0xffff5e14),
                            padding: EdgeInsets.all(1.h),
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
                          Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Email Address',
                                    style: TextStyle(
                                      fontSize: 2.h,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.nunito().fontFamily,
                                    )),
                                style: const ButtonStyle(
                                    backgroundColor:
                                        WidgetStatePropertyAll<Color>(
                                            Color(0xffff5e14)))),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 5.h),
                    child: Container(
                      color: Color(0xf757575),
                      height: 35.h,
                      width: 20.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 3.h)),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.location_on),
                            padding: EdgeInsets.all(1.h),
                            iconSize: 5.h,
                            color: Color(0xffff5e14),
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
                          ElevatedButton(
                              onPressed: () {},
                              child: Text('Get Directions',
                                  style: TextStyle(
                                    fontSize: 2.h,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: GoogleFonts.nunito().fontFamily,
                                  )),
                              style: const ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll<Color>(
                                          Color(0xffff5e14))))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Contact Form Section
            // SizedBox(
            //   width: 50.w,
            //   child: Container(
            //     padding: const EdgeInsets.all(2.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         const Text('Contact Us',
            //             style: TextStyle(fontWeight: FontWeight.bold)),
            //         const SizedBox(height: 8.0),
            //         TextFormField(
            //           decoration: const InputDecoration(
            //             labelText: 'Your Name',
            //           ),
            //         ),
            //         const SizedBox(height: 8.0),
            //         TextFormField(
            //           decoration: const InputDecoration(
            //             labelText: 'Your Email',
            //           ),
            //         ),
            //         const SizedBox(height: 8.0),
            //         TextFormField(
            //           decoration: const InputDecoration(
            //             labelText: 'Subject',
            //           ),
            //         ),
            //         const SizedBox(height: 8.0),
            //         TextFormField(
            //           decoration: const InputDecoration(
            //             labelText: 'Message',
            //           ),
            //           maxLines: 5,
            //         ),
            //         // const SizedBox(height: 16.0),
            //         // Row(
            //         //   children: [
            //         //     ElevatedButton(
            //         //       onPressed: () {
            //         //         // Handle form submission logic
            //         //       },
            //         //       child: const Text('Send Message'),
            //         //     ),
            //         //     const SizedBox(width: 16.0),
            //         //     Text('Enter Captcha'),
            //         //     const SizedBox(width: 8.0),
            //         //     TextButton(
            //         //       onPressed: () {
            //         //         // Handle captcha reload logic
            //         //       },
            //         //       child: const Text('Reload Captcha'),
            //         //     ),
            //         //   ],
            //         // ),
            //       ],
            //     ),
            //   ),
            // ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
