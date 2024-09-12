import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final storageRef = FirebaseStorage.instance.ref();
  List<String> janmashthmi = [];
  List<String> teej = [];
  List<String> plantation = [];
  List<String> cycle = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var listResult = await storageRef.child('janmashtmi').listAll();
      for (var item in listResult.items) {
        String downloadURL = await item.getDownloadURL();
        janmashthmi.add(downloadURL);
      }
      listResult = await storageRef.child('teej').listAll();
      for (var item in listResult.items) {
        String downloadURL = await item.getDownloadURL();
        teej.add(downloadURL);
      }
      listResult = await storageRef.child('plantation').listAll();
      for (var item in listResult.items) {
        String downloadURL = await item.getDownloadURL();
        plantation.add(downloadURL);
      }
      listResult = await storageRef.child('cycle').listAll();
      for (var item in listResult.items) {
        String downloadURL = await item.getDownloadURL();
        cycle.add(downloadURL);
      }
    });
  }

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
