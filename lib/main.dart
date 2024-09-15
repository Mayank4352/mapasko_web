import 'package:calendar_view/calendar_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mapsko/calender/calendar.dart';
import 'package:mapsko/coming_soon_page.dart';
import 'package:mapsko/contact/contact.dart';
import 'package:mapsko/documents/document_page.dart';
import 'package:mapsko/firebase_options.dart';
import 'package:mapsko/gallery/gallery.dart';
import 'package:mapsko/home/home.dart';
import 'package:mapsko/suggestions/suggestions.dart';
import 'package:mapsko/team/team.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return PageTransition(
          child: const HomePage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/team':
        return PageTransition(
          child: const TeamPage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/contact':
        return PageTransition(
          child: const ContactUsPage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/documents':
        return PageTransition(
          child: const DocumentPage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/gallery':
        return PageTransition(
          child: const GalleryPage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/socal':
        return PageTransition(
          child: const CalendarPage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/calendar':
        return PageTransition(
          child: const CalendarPage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/suggestions':
        return PageTransition(
          child: const SuggestionsPage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      default:
        return PageTransition(
          child: const ComingSoonPage(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return CalendarControllerProvider(
        controller: EventController(),
        child: GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomePage(),
          onGenerateRoute: onGenerateRoute,
        ),
      );
    });
  }
}
