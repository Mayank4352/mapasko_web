import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TenderPage extends StatelessWidget {
  const TenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeAppBar(),
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
