import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:mapsko/gallery/widgets/gallery_marquee.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';


class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final storageRef = FirebaseStorage.instance.ref();
  Map<String, List<String>> galleryImages = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var listResult = await storageRef.child('janmashtmi').listAll();
      galleryImages['janmashtmi'] = [];
      for (var item in listResult.items) {
        String downloadURL = await item.getDownloadURL();
        galleryImages['janmashtmi']!.add(downloadURL);
      }
      listResult = await storageRef.child('teej').listAll();
      galleryImages['teej'] = [];
      for (var item in listResult.items) {
        String downloadURL = await item.getDownloadURL();
        galleryImages['teej']!.add(downloadURL);
      }
      listResult = await storageRef.child('plantation').listAll();
      galleryImages['plantation'] = [];
      for (var item in listResult.items) {
        String downloadURL = await item.getDownloadURL();
        galleryImages['plantation']!.add(downloadURL);
      }
      listResult = await storageRef.child('cycle').listAll();
      galleryImages['cycle'] = [];
      for (var item in listResult.items) {
        String downloadURL = await item.getDownloadURL();
        galleryImages['cycle']!.add(downloadURL);
      }
      setState(() {
        log('Loaded');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const HomePageDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(
              onPressedMobile: () {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
            GalleryMarquee(
              galleryImages: galleryImages,
              eventName: 'janmashtmi',
            ),
            GalleryMarquee(galleryImages: galleryImages, eventName: 'teej'),
            GalleryMarquee(galleryImages: galleryImages, eventName: 'cycle'),
            GalleryMarquee(
              galleryImages: galleryImages,
              eventName: 'plantation',
            ),
          ],
        ),
      ),
    );
  }
}
