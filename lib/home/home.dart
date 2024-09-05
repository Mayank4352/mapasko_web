import 'package:flutter/material.dart';
import 'package:mapsko/teampage/team.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.pink[50],
        title: const Text('MCBOA'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Home'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Our Team'),
          ),
          TextButton(
            onPressed: () {
              TeamPage();
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
      body: Column(
        children: [
          Image.asset(
            'assets/Mapsko-Royale-Ville.jpg',
            width: 100.h,
          ),
          Container(
            child: Text(
              'MAPASKO ROYAL VILLE',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
