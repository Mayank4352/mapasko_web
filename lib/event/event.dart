import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final storage = FirebaseStorage.instance;
  final Plant = FirebaseStorage.instance.ref();
  final storageRef = FirebaseStorage.instance.ref();
  List<String> janmashthmi = [];
  List<String> teej = [];
  List<String> plantation = [];
  List<String> cycle = [];

  @override
  void initState() {
    // TODO: implement initState
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
