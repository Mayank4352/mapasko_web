import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key, required this.onPressedMobile});
  final VoidCallback onPressedMobile;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  final TextStyle style = GoogleFonts.nunito(
      color: const Color(0xff880100), fontWeight: FontWeight.w900);
  late List<Widget> desktop;
  late List<Widget> mobile;
  @override
  void initState() {
    super.initState();
    mobile = [
      IconButton(
          onPressed: widget.onPressedMobile, icon: const Icon(Icons.menu)),
    ];
    desktop = [
      TextButton(
        onPressed: () {
          Get.offAllNamed('/home');
        },
        child: Text('Home', style: style),
      ),
      TextButton(
        onPressed: () {
          Get.offAllNamed('/team');
        },
        child: Text('About Us', style: style),
      ),
      TextButton(
        onPressed: () {
          Get.offAllNamed('/contact');
        },
        child: Text('Contact Us', style: style),
      ),
      TextButton(
        onPressed: () {
          Get.offAllNamed('/gallery');
        },
        child: Text('Gallery', style: style),
      ),
      TextButton(
        onPressed: () {
          Get.offAllNamed('/calendar');
        },
        child: Text('Calendar', style: style),
      ),
      TextButton(
        onPressed: () {
          Get.offAllNamed('/notices');
        },
        child: Text('Notices', style: style),
      ),
      TextButton(
        onPressed: () {
          Get.offAllNamed('/sop');
        },
        child: Text('SOP', style: style),
      ),
      TextButton(
        onPressed: () {
          Get.offAllNamed('/suggestions');
        },
        child: Text('Suggestions', style: style),
      ),
    ];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 8.h,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      //shadowColor: Colors.transparent,
      title: Image.asset(
        'assets/logo.png',
        height: 8.h,
        fit: BoxFit.contain,
      ),
      actions: 100.w < 900 ? mobile : desktop,
    );
  }
}
