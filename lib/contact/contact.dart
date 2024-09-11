import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/contact/widgets/society_details.dart';
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsWidget(
                    icon: Icons.call,
                    heading: "Phone Numbers",
                    subHeading:
                        "Estate Manager: 9319884424\nTechnical Manager: 9319884425\nHelp Desk: 0124-5059418/9319884427",
                  ),
                  DetailsWidget(
                      icon: Icons.email,
                      heading: "Email Addresses",
                      subHeading:
                          "Estate Manager: estatemanager.rv@gmail.com\nTechnical Manager: technicalmanagerrv@gmail.com\nHelp Desk: rvhelpdesk2022@gmail.com"),
                  DetailsWidget(
                      icon: Icons.location_on,
                      heading: "Address",
                      subHeading:
                          "00, Basement, Royale Ville, Vatika Road, Sector 82, Gurugram, Haryana 122012"),
                  DetailsWidget(
                      icon: Icons.holiday_village,
                      heading: "Society Description",
                      subHeading:
                          "Total Flats: 486\nTotal Sqft. Area: 10,90,802 Sq ft\nOccupied Flats: 434\nOwners: 251\nTenants: 183")
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
