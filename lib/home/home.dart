import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/homeAppBar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HomeAppBar(),
              Stack(
                children: [
                  SizedBox(
                    height: 100.h,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/Mapsko-Royale-Ville.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'MAPSKO ROYAL VILLE',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
