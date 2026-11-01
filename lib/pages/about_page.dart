import 'package:flutter/material.dart';

import '../widgets/info_tile.dart';
import '../widgets/nav_button.dart';
import '../widgets/page_body.dart';
import '../widgets/page_header.dart';
import 'contact_page.dart';

/// Second page: name, a few info cards and a button to the Contact page.
/// The AppBar back button returns to Home automatically.
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: const PageBody(
        children: [
          PageHeader(
            icon: Icons.info_rounded,
            title: 'About Page',
            subtitle: 'Learn more about this app.',
          ),
          SizedBox(height: 28),
          InfoTile(
            icon: Icons.flag_rounded,
            title: 'Purpose',
            subtitle:
                'A simple app that demonstrates page navigation in Flutter.',
          ),
          InfoTile(
            icon: Icons.code_rounded,
            title: 'Built with Flutter',
            subtitle: 'Material 3 design with a custom theme.',
          ),
          InfoTile(
            icon: Icons.tag_rounded,
            title: 'Version',
            subtitle: '1.0.0',
          ),
          SizedBox(height: 20),
          NavButton(label: 'Go to Contact', routeName: ContactPage.routeName),
        ],
      ),
    );
  }
}
