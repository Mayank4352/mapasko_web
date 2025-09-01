import 'package:flutter/material.dart';

class UnderMaintainencePage extends StatelessWidget {
  const UnderMaintainencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Under Maintenance'),
      ),
      body: const Center(
        child: Text(
          'The site is currently under maintenance. Please check back later.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
