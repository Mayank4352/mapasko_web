import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const HomePageDrawer(),
      body: Column(
        children: [
          HomeAppBar(
            onPressedMobile: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          SizedBox(
            height: 90.h,
            child: const Center(
              child: Text('Coming Soon'),
            ),
          ),
        ],
      ),
    );
  }
}
