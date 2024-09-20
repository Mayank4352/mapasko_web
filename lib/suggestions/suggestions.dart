import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:intl/intl.dart';
import 'dart:developer';

class SuggestionsPage extends StatefulWidget {
  const SuggestionsPage({super.key});

  @override
  State<SuggestionsPage> createState() => _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _towerController = TextEditingController();

  final TextEditingController _messageController = TextEditingController();
  String formattedDate = DateFormat('MMMM d , hh:mm a').format(DateTime.now());

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('suggestions').add({
          'name': _nameController.text,
          'email': _emailController.text,
          'mobile': _mobileController.text,
          'tower': _towerController.text,
          'message': _messageController.text,
        });

        Fluttertoast.showToast(
          msg: "Suggestion submitted successfully!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );

        _nameController.clear();
        _emailController.clear();
        _mobileController.clear();
        _towerController.clear();
        _messageController.clear();
      } catch (e) {
        Fluttertoast.showToast(
          msg: "Error submitting suggestion: $e",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
        log(e.toString());
      }
    }
  }

  TextStyle labelStyle = GoogleFonts.nunito(
      fontSize: 15.sp,
      fontWeight: FontWeight.w900,
      color: const Color.fromARGB(255, 0, 44, 82));
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
                  width: double.infinity,
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0.sp),
                      child: Container(
                        width: 100.w < 900 ? 50.w : 25.w,
                        color: const Color(0xffff5e14),
                        padding: EdgeInsets.all(8.sp),
                        child: Text(
                          "SUGGESTIONS",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: LayoutBuilder(builder: (context, constraints) {
                          return Padding(
                            padding:
                                EdgeInsets.all(0.08 * constraints.maxHeight),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 0.1 * constraints.maxHeight,
                                    child: TextFormField(
                                      style: GoogleFonts.nunito(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w900),
                                      expands: true,
                                      minLines: null,
                                      maxLines: null,
                                      controller: _nameController,
                                      decoration: InputDecoration(
                                        labelText: 'Your Name',
                                        labelStyle: labelStyle,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.1 * constraints.maxHeight,
                                    child: TextFormField(
                                      style: GoogleFonts.nunito(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w900),
                                      minLines: null,
                                      maxLines: null,
                                      expands: true,
                                      controller: _emailController,
                                      decoration: InputDecoration(
                                          labelStyle: labelStyle,
                                          labelText: 'Your Email'),
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email';
                                        }
                                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                            .hasMatch(value)) {
                                          return 'Please enter a valid email';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.1 * constraints.maxHeight,
                                    child: TextFormField(
                                      style: GoogleFonts.nunito(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w900),
                                      minLines: null,
                                      maxLines: null,
                                      expands: true,
                                      controller: _mobileController,
                                      decoration: InputDecoration(
                                          labelStyle: labelStyle,
                                          labelText: 'Mobile No.'),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter a subject';
                                        }
                                        if (!RegExp(r'^[6-9]\d{9}$')
                                            .hasMatch(value)) {
                                          return 'Please enter a valid mobile number';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.1 * constraints.maxHeight,
                                    child: TextFormField(
                                      style: GoogleFonts.nunito(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w900),
                                      minLines: null,
                                      maxLines: null,
                                      expands: true,
                                      controller: _towerController,
                                      decoration: InputDecoration(
                                          labelStyle: labelStyle,
                                          labelText: 'Tower & Flat'),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter tower and flat no.';
                                        }
                                        if (!RegExp(
                                                r'^(?:[1-9]|[1-9]\d|[1-3]\d{2}|400)$')
                                            .hasMatch(value)) {
                                          return 'Please enter a valid flat number';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.25 * constraints.maxHeight,
                                    child: TextFormField(
                                      style: GoogleFonts.nunito(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w900),
                                      minLines: null,
                                      maxLines: null,
                                      expands: true,
                                      controller: _messageController,
                                      decoration: InputDecoration(
                                          labelStyle: labelStyle,
                                          labelText: 'Suggestion/Query'),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter a message';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.05 * constraints.maxHeight),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                            onPressed: _submitForm,
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.black,
                                              backgroundColor:
                                                  const Color(0xffff5e14),
                                              shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.sp)),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 0.02 *
                                                      constraints.maxHeight,
                                                  horizontal: 0.005 *
                                                      constraints.maxWidth),
                                              child: Text('Submit',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 2.h,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        GoogleFonts.nunito()
                                                            .fontFamily,
                                                  )),
                                            )),
                                        Container(
                                          height: 100.w < 900
                                              ? 0.1 * constraints.maxHeight
                                              : 0.05 * constraints.maxHeight,
                                          width: 100.w < 900
                                              ? 0.30 * constraints.maxWidth
                                              : 0.17 * constraints.maxWidth,
                                          color: const Color(0xffff5e14),
                                          child: Text(
                                            formattedDate,
                                            style: TextStyle(
                                              fontSize: 1.5.h,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              letterSpacing: 1.5,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
