import 'package:flutter/material.dart';

import '../widgets/nav_button.dart';
import '../widgets/page_body.dart';
import '../widgets/page_header.dart';
import 'about_page.dart';

/// First page of the app: name, image, icon and a button to the About page.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: PageBody(
        children: [
          Card(
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: AspectRatio(
              aspectRatio: 900 / 560,
              child: Image.asset(
                'assets/images/home.png',
                fit: BoxFit.cover,
                semanticLabel: 'Welcome illustration',
              ),
            ),
          ),
          const SizedBox(height: 28),
          const PageHeader(
            icon: Icons.home_rounded,
            title: 'Home Page',
            subtitle: 'Welcome! Start exploring the app from here.',
          ),
          const SizedBox(height: 32),
          const NavButton(label: 'Go to About', routeName: AboutPage.routeName),
        ],
      ),
    );
  }
}
