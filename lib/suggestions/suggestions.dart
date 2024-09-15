import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mapsko/home/widgets/footer.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:mapsko/home/widgets/home_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SuggestionsPage extends StatefulWidget {
  const SuggestionsPage({super.key});

  @override
  State<SuggestionsPage> createState() => _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('suggestions').add({
          'name': _nameController.text,
          'email': _emailController.text,
          'subject': _subjectController.text,
          'message': _messageController.text,
        });

        Fluttertoast.showToast(
          msg: "Suggestion submitted successfully!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );

        _nameController.clear();
        _emailController.clear();
        _subjectController.clear();
        _messageController.clear();
      } catch (e) {
        Fluttertoast.showToast(
          msg: "Error submitting suggestion: $e",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const HomePageDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    HomeAppBar(
                      onPressedMobile: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                    ),
                    Text(
                      'Suggestions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.red[900],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 50.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: Colors.white38,
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
                                    height: 0.15 * constraints.maxHeight,
                                    child: TextFormField(
                                      expands: true,
                                      minLines: null,
                                      maxLines: null,
                                      controller: _nameController,
                                      decoration: const InputDecoration(
                                          labelText: 'Your Name'),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.15 * constraints.maxHeight,
                                    child: TextFormField(
                                      minLines: null,
                                      maxLines: null,
                                      expands: true,
                                      controller: _emailController,
                                      decoration: const InputDecoration(
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
                                    height: 0.15 * constraints.maxHeight,
                                    child: TextFormField(
                                      minLines: null,
                                      maxLines: null,
                                      expands: true,
                                      controller: _subjectController,
                                      decoration: const InputDecoration(
                                          labelText: 'Subject'),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter a subject';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.25 * constraints.maxHeight,
                                    child: TextFormField(
                                      minLines: null,
                                      maxLines: null,
                                      expands: true,
                                      controller: _messageController,
                                      decoration: const InputDecoration(
                                          labelText: 'Message'),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter a message';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 0.14 * constraints.maxHeight,
                                    padding: EdgeInsets.only(
                                        top: 0.05 * constraints.maxHeight),
                                    child: ElevatedButton(
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
                                      child: const Text('Submit'),
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
