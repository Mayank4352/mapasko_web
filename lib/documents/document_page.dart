import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mapsko/documents/widgets/document_widget.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key});

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Map<String, dynamic> documents = {};
  bool isLoading = true;

  final dbRef = FirebaseFirestore.instance.collection('sop').doc('docs');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      documents = await dbRef
          .get()
          .then((value) => documents = value.data() as Map<String, dynamic>);
      setState(() {
        log(documents.toString());
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const HomePageDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(
              onPressedMobile: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: 100.w < 900
                  ? ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 10.sp, bottom: 10.sp),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: documents.length,
                      itemBuilder: (context, index) {
                        return DocumentWidget(
                          heading: documents.keys.elementAt(index),
                          downloadURL: documents.values.elementAt(index),
                        );
                      })
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 40.h,
                        crossAxisCount: 4,
                        crossAxisSpacing: 10.sp,
                        mainAxisSpacing: 10.sp,
                      ),
                      itemCount: documents.length,
                      itemBuilder: (context, index) {
                        return DocumentWidget(
                          downloadURL: documents.values.elementAt(index),
                          heading: documents.keys.elementAt(index),
                        );
                      },
                      padding: const EdgeInsets.all(10),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
