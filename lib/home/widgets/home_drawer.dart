import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomePageDrawer extends StatefulWidget {
  const HomePageDrawer({super.key});

  @override
  State<HomePageDrawer> createState() => _HomPageeDrawerState();
}

class _HomPageeDrawerState extends State<HomePageDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Get.offAllNamed('/home');
            },
          ),
          ListTile(
            title: const Text('About Us'),
            onTap: () {
              Get.offAllNamed('/team');
            },
          ),
          ListTile(
            title: const Text('Contact Us'),
            onTap: () {
              Get.offAllNamed('/contact');
            },
          ),
          ListTile(
            title: const Text('Gallery'),
            onTap: () {
              Get.offAllNamed('/gallery');
            },
          ),
          ListTile(
            title: const Text('Calendar'),
            onTap: () {
              Get.offAllNamed('/calendar');
            },
          ),
          ListTile(
            title: const Text('Notices'),
            onTap: () {
              Get.offAllNamed('/notices');
            },
          ),
          ListTile(
            title: const Text('SOP'),
            onTap: () {
              Get.offAllNamed('/sop');
            },
          ),
          ListTile(
            title: const Text('Suggestions'),
            onTap: () {
              Get.offAllNamed('/suggestions');
            },
          ),
        ],
      ),
    );
  }
}
