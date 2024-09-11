import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      shadowColor: const Color(0xffff5e14),
      title: const Text('Mapsko Royale Ville'),
      actions: [
        TextButton(
          onPressed: () {
            Get.offAllNamed('/home');
          },
          child: const Text('Home', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/team');
          },
          child: const Text('About Us', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/contact');
          },
          child:
              const Text('Contact Us', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/gallery');
          },
          child: const Text('Gallery', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/events');
          },
          child: const Text('Event Calendar',
              style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/notices');
          },
          child: const Text('Notices', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/sop');
          },
          child: const Text('SOP', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/socal');
          },
          child: const Text('Social Calendar',
              style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/suggestions');
          },
          child:
              const Text('Suggestions', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
