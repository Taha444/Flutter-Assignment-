import 'package:flutter/material.dart';

import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/home_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget. Registers the app theme and the named routes.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => const HomePage(),
        AboutPage.routeName: (_) => const AboutPage(),
        ContactPage.routeName: (_) => const ContactPage(),
      },
    );
  }
}
