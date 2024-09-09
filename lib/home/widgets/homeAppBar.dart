import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mapsko/contact_us/contact.dart';
import 'package:mapsko/teampage/team.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 5.h,
      child: AppBar(
        shadowColor: Color(0xffff5e14),
        title: const Text('Mapsko Royale Ville'),
        actions: [
          TextButton(
            onPressed: () {
              Get.offNamed('/home');
            },
            child: const Text('Home'),
          ),
          TextButton(
            onPressed: () {
              Get.offNamed('/team');
            },
            child: const Text('Our Team'),
          ),
          TextButton(
            onPressed: () {
              Get.offNamed('/contact');
            },
            child: const Text('Contact'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Documents'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Tenders'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Login/Register'),
          ),
        ],
      ),
    );
  }
}
