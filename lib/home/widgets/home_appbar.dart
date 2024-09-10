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
          child: const Text('Home'),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/team');
          },
          child: const Text('Our Team'),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/contact');
          },
          child: const Text('Contact'),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/documents');
          },
          child: const Text('Documents'),
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed('/tenders');
          },
          child: const Text('Tenders'),
        ),
      ],
    );
  }
}
