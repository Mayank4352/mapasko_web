import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/contact/widgets/society_details.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    List<Widget> details = [
      const DetailsWidget(
        icon: Icons.call,
        textAlign: TextAlign.center,
        heading: "Phone Numbers",
        subHeading:
            "Estate Manager: 9319884424\nTechnical Manager: 9319884425\nHelp Desk: 0124-5059418/9319884427",
      ),
      const DetailsWidget(
          icon: Icons.email,
          textAlign: TextAlign.center,
          heading: "Email Addresses",
          subHeading:
              "Estate Manager: estatemanager.rv@gmail.com\nTechnical Manager: technicalmanagerrv@gmail.com\nHelp Desk: rvhelpdesk2022@gmail.com"),
      const DetailsWidget(
          icon: Icons.location_on,
          heading: "Address",
          subHeading:
              "00, Basement, Royale Ville, Vatika Road, Sector 82, Gurugram, Haryana 122012"),
      const DetailsWidget(
          icon: Icons.holiday_village,
          heading: "Society Description",
          subHeading:
              "Total Flats: 486\nTotal Sqft. Area: 10,90,802 Sq ft\nOccupied Flats: 434\nOwners: 251\nTenants: 183")
    ];

    return Scaffold(
      key: scaffoldKey,
      endDrawer: const HomePageDrawer(),
      body: SingleChildScrollView(
        child: Column(
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
                    'assets/mapsko royal ville garden 2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                100.w < 900
                    ? SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: details,
                        ),
                      )
                    : SizedBox(
                        width: double.infinity,
                        height: 100.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: details,
                        ),
                      ),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
