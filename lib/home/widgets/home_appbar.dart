import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key, required this.onPressedMobile});
  final VoidCallback onPressedMobile;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  List<Widget> desktop = [
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
      child: const Text('Contact Us', style: TextStyle(color: Colors.black)),
    ),
    TextButton(
      onPressed: () {
        Get.offAllNamed('/gallery');
      },
      child: const Text('Gallery', style: TextStyle(color: Colors.black)),
    ),
    TextButton(
      onPressed: () {
        Get.offAllNamed('/calendar');
      },
      child: const Text('Calendar', style: TextStyle(color: Colors.black)),
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
        Get.offAllNamed('/suggestions');
      },
      child: const Text('Suggestions', style: TextStyle(color: Colors.black)),
    ),
  ];
  late List<Widget> mobile;
  @override
  void initState() {
    super.initState();
    mobile = [
      IconButton(
          onPressed: widget.onPressedMobile, icon: const Icon(Icons.menu)),
    ];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      shadowColor: const Color(0xffff5e14),
      title: const Text('Mapsko Royale Ville'),
      actions: 100.w < 900 ? mobile : desktop,
    );
  }
}
